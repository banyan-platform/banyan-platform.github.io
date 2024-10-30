---
title: "{{ replace .File.ContentBaseName `-` ` ` | title }}"
draft: true
slug:
description:
date: {{ .Date }}
author:
github-user:
image: images/default-post-cover.jpg
math:
license:
hidden: false
comments: true
categories:
    - Updates
tags:
    - notes
# Notes on weights:
#
# The following approach to weight values are experimental and up for discussion, change, etc.
#
# Also, I feel that the developer of this site template may have used the wrong term ... Either have the higher number contribute more weight, or use a term like "inverse-weight" ;-)
#
# 1 - needed for high-visibility posts that focus on customer-facing engineering work
# 5 - good for posts on internal tooling, process, insights on how we work
# 10 - used for good news around our people: hires, promotions, etc.
# 20 - used for sad news, like departures
#
# Lastly, delete any comments in this metadata section before publishing ...
weight: 10
---
Content to be added ...
