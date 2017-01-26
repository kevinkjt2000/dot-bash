#!/usr/bin/env bash
#
# kevinkjt2000/bash ellipsis package

pkg.install() {
	git submodule update --init --recursive
	$PKG_PATH/bash_it/install.sh --silent --no-modify-config
}

pkg.pull() {
	git.pull
	git submodule update --recursive --remote
}

