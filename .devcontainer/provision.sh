#!/usr/bin/env bash

set -e

cp .devcontainer/.bash-config/.bash_exports_local ~/.bash_exports_local
# shellcheck disable=SC1090
. ~/.bash_exports_local
apt update
apt install -y ruby-full build-essential zlib1g-dev
gem install jekyll bundler
bundle install

# Local provisioner?
if [ -x .devcontainer/provision-local.sh ]; then
	.devcontainer/provision-local.sh
fi
