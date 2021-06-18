#!/usr/bin/env bash

set -e

gem install bundler
bundler install

# Local provisioner?
if [ -x .devcontainer/provision-local.sh ]; then
	.devcontainer/provision-local.sh
fi
