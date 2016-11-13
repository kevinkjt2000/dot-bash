#!/usr/bin/env bash
#
# kevinkjt2000/bash ellipsis package

pkg.install() {
  git submodule update --init --recursive
}

pkg.pull() {
  git.pull
  git submodule update --recursive --remote
}

