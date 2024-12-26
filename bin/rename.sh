#!/bin/bash

set -e
set -u
set -x

alias="$1"
title="$2"

base_dir=content/ja/post/

dir="$(find "$base_dir" -type d -name "$alias")"
dir="$(dirname "$dir")"
mv -v "${dir}/${alias}" "${dir}/${title}"

sed -i \
    -e "s/^authors: \[\]/\0\n\naliases:\n- ${alias}/" \
    -e "s/^slug: .*/slug: ${title}/" \
    "${dir}/${title}/index.md"
