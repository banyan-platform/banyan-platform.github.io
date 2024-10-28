---
title: "Automated Merchant Onboarding"
draft: false
slug:
description:
date: 2022-05-12T15:24:42-05:00
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
    - releases
    - airflow
    - beam
---
When we first started onboarding merchant data, it was a long and arduous manual process requiring extraordinary coordination and countless meetings (mostly due to a lack of industry standards or adherence to convention). A side effect of this was that we developed an in-house expertise in bringing disparate merchant data sources (product catalogs and receipts) into uniform representations that could benefit from the capabilities built into the Banyan Platform at every level of our stack.

After a huge amount of effort from Trevor, Billy, Eric, and Tarik as well as from Google contractors, we have onboarded our first partner via automated means using Apache Beam and Airflow, hosted on GCP. We anticipate that this will save of a huge amount of time and we are delighted with the codification of our specialized knowledge into code that anyone on our team can use and to which they can now easily contribute.
