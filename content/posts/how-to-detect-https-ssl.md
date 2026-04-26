---
title: "How to detect HTTPS SSL"
date: 2011-10-03T07:30:31
slug: how-to-detect-https-ssl
categories: ["PHP"]
tags: ["detect https", "detect ssl", "https", "php https", "php ssl"]
aliases: ["/2011/10/03/how-to-detect-https-ssl/"]
---

You can detect HTTPS with the code line below in PHP

```
if (!isset($_SERVER['HTTPS']) || $_SERVER['HTTPS'] != 'on')
{
     //Your code here
}
```
