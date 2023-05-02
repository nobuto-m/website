#!/bin/bash

set -e
set -u

# According to the following forum post, it seems there is no good way
# to use multilingual archetypes yet.
# https://discourse.gohugo.io/t/multilingual-archetypes/39542/8

year="$(date '+%Y')"
unixtime="$(date '+%s')"
date="$(date -Isec)"

dir="content/ja/post/${year}/${unixtime}"
mkdir -p "$dir"

path="${dir}/index.md"
echo "$path"
cat > "$path" <<EOF
---
# Documentation: https://wowchemy.com/docs/managing-content/

title: ""
slug: $unixtime
subtitle: ""
summary: ""
authors: []

tags: []
categories: []

reading_time: false
show_related: true

year: $year
date: $date
lastmod: $date

featured: false
draft: false

# Featured image
# To use, add an image named "featured.jpg/png" to your page's folder.
image:
  preview_only: true
---

{{< figure src="featured.png" title="" >}}
EOF
