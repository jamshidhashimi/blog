---
title: "Saving changes is not permitted. The changes you have made require the following tables to dropped and re-created…"
date: 2011-03-10T16:19:38
slug: saving-changes-is-not-permitted-the-changes-you-have-mad-require-the-following-tables-to-dropped-and-re-created-you-have-either-made-changes-to-a-table-that-cant-be-re-created-or-enabled
categories: ["Programming General", "SQL Server 2008"]
tags: ["database designer", "database table", "gt options", "management studio error", "open management", "specification section", "sql değiştirme hatası", "sql error", "sql Saving changes is not permitted"]
aliases: ["/2011/03/10/saving-changes-is-not-permitted-the-changes-you-have-mad-require-the-following-tables-to-dropped-and-re-created-you-have-either-made-changes-to-a-table-that-cant-be-re-created-or-enabled/"]
---

This is a common problem when you want to do some changes over your database table; the common one : You want make the “is identity=yes” in **Identity specification** section.

The error screen is as below: (Saving changes is not permitted. The changes you have made require the following tables to dropped and re-created. You have either made changes to a table that can’t be re-created or enabled the option Prevent saving changes that require the table to be re-created.)

![](/images/posts/saving-changes-is-not-permitted-the-changes-you-have-mad-require-the-following-tables-to-dropped-and-re-created-you-have-either-made-changes-to-a-table-that-cant-be-re-created-or-enabled/Sql_error.png "SQL Error")

To solve this error; you must follow the instruction below:

Open Management studio –> Tools–>Options–>Table and database designer –>  and in this area; do uncheck “Prevent saving changes that require table re-creation” part.

![](/images/posts/saving-changes-is-not-permitted-the-changes-you-have-mad-require-the-following-tables-to-dropped-and-re-created-you-have-either-made-changes-to-a-table-that-cant-be-re-created-or-enabled/SQL_Hata.png "SQL Error solution")

Click OK, and you won’t get the same error as before.
