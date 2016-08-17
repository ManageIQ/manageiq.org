#!/bin/sh

git submodule init && git submodule update

# TODO: Make friendly with other platforms
# TODO: Determine if these packages are still necessary

# sudo yum install -y ruby-devel rubygems-devel gcc-c++ curl-devel rubygem-bundler patch

bundle install
