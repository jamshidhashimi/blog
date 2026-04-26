---
title: "Check if a record exist in a specific table of database in MySQL"
date: 2011-06-04T09:48:00
slug: check-if-a-record-exist-in-a-specific-table-of-database-in-mysql
categories: ["MySQL"]
tags: ["check record", "check record in database"]
aliases: ["/2011/06/04/check-if-a-record-exist-in-a-specific-table-of-database-in-mysql/"]
---

You can check if a record exist in a specific table of database in MySQL with the code block below:

```
if(mysql_num_rows(mysql_query("SELECT * FROM reports WHERE reportID = '$reportNUM'"))){
// Code inside if block if reportID is already there
}
```
