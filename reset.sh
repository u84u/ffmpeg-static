!#/bin/bash

set -xe

git submodule deinit -f .
git submodule update --init
