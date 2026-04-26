---
title: "MySQL query to append character to each entry"
date: 2012-07-30T06:51:57
slug: mysql-query-to-append-character-to-each-entry
categories: ["MySQL"]
tags: ["mysql append", "mysql append character"]
aliases: ["/2012/07/30/mysql-query-to-append-character-to-each-entry/"]
---

Scenario: You want to append a string or character at the beginning of a db field.

solution:

```
UPDATE Tablename SET Username = Concat('0', Username);
```
