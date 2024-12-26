#!/bin/bash

set -e
set -u
set -o pipefail

set -x
version="$1"

if [ -z "$version" ]; then
    echo 'No version is specified'
    exit 1
fi

wget -q --show-progress -O - "https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_extended_${version}_linux-amd64.tar.gz" \
    | tar -zx -C ~/.local/bin/ hugo

hugo env
