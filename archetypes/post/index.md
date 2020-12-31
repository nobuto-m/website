---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "{{ humanize .Name }}"
slug: {{ .Name }}
subtitle: ""
summary: ""
authors: []

tags: []
categories: []

year: {{ dateFormat "2006" .Date }}
date: {{ .Date }}
lastmod: {{ .Date }}

featured: false
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  # change it to true if it's actually used inside the post
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
