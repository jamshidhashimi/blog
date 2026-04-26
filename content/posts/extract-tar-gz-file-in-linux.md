---
title: "Extract tar.gz file in Linux"
date: 2010-01-05T17:48:43
slug: extract-tar-gz-file-in-linux
categories: ["Linux", "Shell Script"]
tags: ["extract tar.gz", "tar.gz extract"]
aliases: ["/2010/01/05/extract-tar-gz-file-in-linux/"]
---

*tar.gz* is a format of a *gzip* compressed *tar* archived file. It is a common format in distributing files in \**nix*.

To extract a *tar.gz* file, the most basic syntax is as the following;

```
tar xzf filename.tar.gz
```

and to extract tar.bz2 you can use this command:

```
tar -jxvf filename.tar.bz2
```

The command will extract the file to the current working directory. Current versions of the *tar* program doesn’t require the *-z* switch, as it auto detects the file format and extract accordingly.

To extract in verbose mode, and to a directory called */target*, the following is the syntax;

```
tar xvf filename.tar.gz -C /targe
```
