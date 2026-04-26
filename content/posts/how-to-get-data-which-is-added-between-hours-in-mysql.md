---
title: "How to get data which is added between hours in MySQL?"
date: 2011-12-26T09:13:40
slug: how-to-get-data-which-is-added-between-hours-in-mysql
categories: ["MySQL"]
tags: ["mysql hour", "mysql time"]
aliases: ["/2011/12/26/how-to-get-data-which-is-added-between-hours-in-mysql/"]
---

```
SELECT * FROM TABLE WHERE HOUR(time) BETWEEN 1 AND 2;
```

This query brings all records between 1 and 2 o’clock according to time field of you table. (time = The DB field which you save the time)
