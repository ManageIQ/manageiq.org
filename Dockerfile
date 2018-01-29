# FROM ehayes/manageiq_org_base:latest
FROM manageiq/ruby:latest
MAINTAINER Eric Hayes <eric@erichayes.net>

RUN yum -y install epel-release
RUN yum -y install \
  bison \
  bzip2 \
  curl-devel \
  gcc \
  gcc-c++ \
  git \
  libffi \
  libffi-devel \
  libxml2-devel \
  libxslt-devel \
  libyaml-devel \
  make \
  openssl-devel \
  readline-devel \
  tar \
  vim-enhanced \
  wget \
  zlib-devel

# Install Nginx & setup
# ----------------------------------------
RUN yum -y install nginx

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log


# Install Certbot for SSL renewal
# ----------------------------------------
RUN yum -y install certbot

# Install Bundler
# ----------------------------------------
RUN gem install bundler

# ENV vars
# ----------------------------------------

# Believe it or not, for Sass processing:
ENV LC_LANG="en_US.UTF-8"
ENV LANG="en_US.UTF-8"

# Effects things like whether Google Analytics is included
ENV JEKYLL_ENV=production

# Effects Ruby libs loaded
ENV MIQ_ENV=production

# Shell commands are logged, not run
# MIQ_DEBUG=1

# Change logging destination
# MIQ_LOG_DEST

# Absolute path for Bundler
ENV MIQ_BUNDLER=/usr/local/bin/bundler

ENV MIQ_BASE_DIR=/srv/build
ENV MIQ_DOCS_DIR=/srv/build/site/docs

ENV MIQ_GUIDES_REPO=https://github.com/manageiq/guides
ENV MIQ_GUIDES_BRANCH=master

ENV MIQ_SITE_DEST=/srv/manageiq_org
ENV MIQ_SITE_SOURCE=${MIQ_BASE_DIR}/site
ENV MIQ_SITE_BRANCH=master

ENV MIQ_REF_REPO=https://github.com/manageiq/manageiq_docs
ENV MIQ_REF_BRANCH=master
# ENV MIQ_REF_TMP=/tmp/manageiq_docs
# ENV MIQ_REF_SRC=_preview/manageiq/${MIQ_REF_BRANCH}
# ENV MIQ_REF_DIR=${MIQ_DOCS_DIR}/reference/latest

# Prime the pump bundler gems (hopefully this is cached)
# ----------------------------------------

RUN mkdir -p /srv/base
COPY /Gemfile /srv/base

WORKDIR /srv/base
RUN ${MIQ_BUNDLER} install
RUN gem install ascii_binder

# Nginx configs
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.dist
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/manageiq_org.conf /etc/nginx/conf.d/

# Site
RUN mkdir -p ${MIQ_SITE_DEST} ${MIQ_BASE_DIR}
COPY / ${MIQ_BASE_DIR}
WORKDIR ${MIQ_BASE_DIR}
RUN ${MIQ_BUNDLER} install --without development test

# Build site (working dir == /srv/build)
RUN /bin/bash -l -c "exe/miq build all"
RUN chown -R nginx: ${MIQ_SITE_DEST}

# Run webserver
VOLUME "/etc/letsencrypt"
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
