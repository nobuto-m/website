#!/bin/bash

set -e
set -u

printf 'New post title: '
read -r title

title_url="$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -e 's/[^a-z]/-/g' -e 's/-\+/-/g' -e 's/-$//')"
year="$(date '+%Y')"
hugo new --kind post "post/$year/${title_url}"
