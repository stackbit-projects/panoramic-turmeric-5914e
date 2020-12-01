#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fc5914e36d45c2ad68eea43

echo "stackbit-build.sh: finished build"
