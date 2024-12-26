#!/bin/bash

set -e
set -u

printf 'New post title: '
read -r title

lang="$1"

title_url="$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -e 's/[^a-z0-9]/-/g' -e 's/-\+/-/g' -e 's/-$//')"
year="$(date '+%Y')"
hugo new --kind post "content/${lang}/post/$year/${title_url}"

# According to the following forum post, it seems there is no good way
# to use multilingual archetypes yet.
# https://discourse.gohugo.io/t/multilingual-archetypes/39542/8
if [ "$lang" = 'ja' ]; then
    sed -i -e 's/^share: .*/share: false/' "content/${lang}/post/$year/${title_url}/index.md"
fi
