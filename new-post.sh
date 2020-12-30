#!/bin/bash

set -e
set -u

shopt -s expand_aliases
. ~/.bash_aliases || true

printf 'New post title: '
read -r title

title_url="$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')"
hugo new --kind post "post/${title_url}"
