---
title: "Unable to create directory /home/jamshidh/public_html/wp-content. Is its parent directory writable by the server?"
date: 2011-12-22T11:47:22
slug: unable-to-create-directory-homejamshidhpublic_htmlwp-content-is-its-parent-directory-writable-by-the-server
categories: ["Personal"]
tags: ["upload error", "wordpress media error", "wp upload error"]
aliases: ["/2011/12/22/unable-to-create-directory-homejamshidhpublic_htmlwp-content-is-its-parent-directory-writable-by-the-server/"]
---

I recently had a problem regarding this issue in my blog (WordPress 3.3). The problem occured when I wanted to upload an image to one of posts.

When trying to upload the image, the following error occured:

Unable to create directory /home/jamshidh/public\_html/wp-content. Is its parent directory writable by the server?

After some searchs regarding this problem. I find the solution as following:

1) Creating a folder named “uploads” in the wp-content folder and make the permission of this file to 777 (If you already have this folder, please check if you give the proper right of 777 to this folder)  
2)wp-admin->settings->media->Uploading Files->Store uploads in this folder and change this part to: wp-content/uploads
