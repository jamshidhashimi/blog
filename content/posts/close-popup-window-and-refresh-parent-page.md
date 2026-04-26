---
title: "Close Popup Window and Refresh Parent Page"
date: 2012-04-30T08:02:22
slug: close-popup-window-and-refresh-parent-page
categories: ["Javascript"]
tags: ["close and refresh", "javascript popup", "popup close", "refresh parent"]
aliases: ["/2012/04/30/close-popup-window-and-refresh-parent-page/"]
---

I needed this simple code tonight, I tried many ways, but this one worked perfectly. It firstly closes your popup window, and refresh the parent page then.

```
//close popup window and refresh the parent window
function CloseAndRefresh()
{
    window.close();
    if (window.opener && !window.opener.closed) {
    window.opener.location.reload();
    }
}
```

You can use it like this:

```
<input type="button" class="button" onclick="CloseAndRefresh()" value="Close" />
```
