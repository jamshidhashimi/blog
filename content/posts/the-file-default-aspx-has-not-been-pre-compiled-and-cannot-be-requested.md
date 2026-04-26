---
title: "The file ‘/Default.aspx’ has not been pre-compiled, and cannot be requested."
date: 2011-03-29T12:17:41
slug: the-file-default-aspx-has-not-been-pre-compiled-and-cannot-be-requested
categories: ["Windows Server 2008"]
tags: ["annot be requested", "has not been pre-compiled", "iis error"]
aliases: ["/2011/03/29/the-file-default-aspx-has-not-been-pre-compiled-and-cannot-be-requested/"]
---

The quick solution for this problem is:

Just rename the “.compiled” file from the /Bin folder and run the page. You will get the same error again, after this, rename back that “.compiled” file or .dll to its previous name.

The same explanation :

> This is one of the temporary solution i did when i got the same errors.  First rename the .dll file in bin folder to some .dllx and run the project.  Then again rename the .dllx to the original name and you will see your application running.

Now your page will work as before.
