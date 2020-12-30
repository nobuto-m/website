#!/bin/bash

set -e
set -u

shopt -s expand_aliases
. ~/.bash_aliases || true

printf 'New post title: '
read -r title

title_url="$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -e 's/[^a-z]/-/g' -e 's/-\+/-/g')"
year="$(date '+%Y')"
hugo new --kind post "post/$year/${title_url}"
