---
title: "Banyan Platform API V1 Release"
draft: false
slug:
description:
date: 2021-12-03T14:27:44-05:00
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
    - release
    - gcp
    - rest
    - bigtable
---
In July, Billy and Wil (CTO) started work on the new Banyan Platform with audacious plans for being able to handle hundreds of millions of receipts and transaction data. Shortly after this, Ivan began converting the original Node.js demo into Golang, as a proof of concept for a REST API. In September, Duncan began establishing the means by which to move all of this early prototype work into production-ready software and services. As of today, we have our first release into production, with a REST API backed by Google's BigTable, supporting access potentially mind-blowingly massive data stores.
