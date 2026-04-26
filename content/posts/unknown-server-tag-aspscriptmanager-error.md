---
title: "Unknown server tag ‘asp:ScriptManager’ error"
date: 2011-04-01T16:11:39
slug: unknown-server-tag-aspscriptmanager-error
categories: ["IIS"]
tags: ["application pool", "application pool change", "asp:ScriptManager", "Unknown server tag"]
aliases: ["/2011/04/01/unknown-server-tag-aspscriptmanager-error/"]
---

The problem is generally because, you had developed your website with ASP.NET 4.0 and when you put your website into server, you get this error, because the application pool which is assigned to your website do not support ASP.NET 4.0.

Just do it yourself or ask your hosting company to assign ASP.NET 4.0 supported Application pool for your website.

![](/images/posts/unknown-server-tag-aspscriptmanager-error/applicationPool.png "Application Pool")
