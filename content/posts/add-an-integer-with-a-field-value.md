---
title: "Add an integer with a field value"
date: 2012-07-30T06:49:44
slug: add-an-integer-with-a-field-value
categories: ["MySQL"]
tags: ["mysql add", "mysql field add number", "mysql update"]
aliases: ["/2012/07/30/add-an-integer-with-a-field-value/"]
---

Scenario: You have a field in database where you want to add it all with a number for example: 1000;

you can update all of them like this:

```
UPDATE mysql_table SET user_id = 1000 + user_id;
```
