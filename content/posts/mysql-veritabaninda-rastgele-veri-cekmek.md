---
title: "Mysql veritabanında Rastgele veri çekmek"
date: 2010-03-24T16:13:03
slug: mysql-veritabaninda-rastgele-veri-cekmek
categories: ["MySQL", "Programming General"]
tags: ["mysql rastgele veri", "mysql veri", "mysqlden rastgele"]
aliases: ["/2010/03/24/mysql-veritabaninda-rastgele-veri-cekmek/"]
language: "tr"
---

Bunun için;

çekeceğiniz query’nin sonunda  şunlar ekliyorsunuz:(Kalın olarak yazılan kismi)

$sorgu=mysql\_query(“SELECT \* FROM table **ORDER by rand() LIMIT 1**“);

Daha fazlası icin bu makaleyi inceleyiniz:

<http://www.learningmovabletype.com/a/001037random_quotes/>
