---
title: "Indexer: A New Banyan Tool for Examining Distributed Data"
draft: false
slug:
description:
date: 2023-02-21T14:27:44-05:00
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
    - gcp
    - tracing
    - distributed systems
    - logging
    - data
    - troubleshooting
weight: 1
---
The "indexer" tool that Kasey worked on before winter break is now ready for production use! With the recent refactor and merge (deployed today), the team is even better equipped to investigate everything from network partitions, back pressure, and resource contention to issues with customer data, unexpected metrics, and missing logs.

We currently make extensive use of Open Telemetry (via Honeycomb.io) and logging to provide insight into the nature of our infrastructure's operational parameters as well as the behaviour of the data flowing through it. However, this in and of itself, is not enough. We depend upon a great deal of context when observing our systems, and not all of the components upon which rely are amenable to tracing -- and neither do we fully control all aspects of our system, given the number of products we use from the GCP ecosystem. As such, we needed a tool that allows us to correlate events, identity all operations between any two points in the flow through our system, etc. Having something like this was absolutely crucial to being able to provide the level of service to our customers that we would be happy with.
