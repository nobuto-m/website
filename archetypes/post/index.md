---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "{{ humanize .Name }}"
slug: {{ .Name }}
subtitle: ""
summary: ""
authors: []

tags: []
categories: []
keywords: []

reading_time: false
show_related: true

year: {{ dateFormat "2006" .Date }}
date: {{ .Date }}
lastmod: {{ .Date }}

featured: false
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  preview_only: true
---

{{< figure src="featured.png" caption="" >}}
