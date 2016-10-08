FROM ehayes/manageiq_org_base:latest
MAINTAINER Eric Hayes <eric@erichayes.net>

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
ENV MIQ_BUNDLER=/root/.rbenv/shims/bundle

ENV MIQ_BASE_DIR=/srv/build
ENV MIQ_DOCS_DIR=/srv/build/site/docs
ENV MIQ_GUIDES_DIR=${MIQ_DOCS_DIR}/guides

ENV MIQ_SITE_DEST=/srv/manageiq_org
ENV MIQ_SITE_SOURCE=${MIQ_BASE_DIR}/site
ENV MIQ_SITE_BRANCH=reorg

ENV MIQ_REF_REPO=https://github.com/hayesr/manageiq_docs
ENV MIQ_REF_BRANCH=redesign
# ENV MIQ_REF_TMP=/tmp/manageiq_docs
# ENV MIQ_REF_SRC=_preview/manageiq/${MIQ_REF_BRANCH}
# ENV MIQ_REF_DST=${MIQ_DOCS_DIR}/reference/latest

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
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
