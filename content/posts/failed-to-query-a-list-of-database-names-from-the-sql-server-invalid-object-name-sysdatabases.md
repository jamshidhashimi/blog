---
title: "failed to query a list of database names from the sql server. invalid object name ‘sysdatabases’"
date: 2010-09-02T00:07:02
slug: failed-to-query-a-list-of-database-names-from-the-sql-server-invalid-object-name-sysdatabases
categories: ["Microsoft", "Programming General", "SQL Server 2008"]
tags: ["failed to query a list of database names from the sql server. invalid object name 'sysdatabases'", "invalid object name"]
aliases: ["/2010/09/02/failed-to-query-a-list-of-database-names-from-the-sql-server-invalid-object-name-sysdatabases/"]
---

Asp.net bir proje üzerine uğraşırken başıma gelen bir sorunun çözümünü bulduktan sonra buraya da not düşmek istedim. hani olurda birilerinin başına gelir diye…

şimdi, Visual studio command prompt tan **aspnet\_regsql** komutunu çalıştırdığınızda, bütün işlemleri düzgün yapmanıza rağmen, son aşamada başlık olarak verdiğim hatayı alıyorsanız : “failed to query a list of database names from the sql server. invalid object name ‘sysdatabases'”  ve  Ayni zamanda, Visual studioda, projenizi açtıktan sonra , Website -> Asp.net configuration ve oradanda “Güvenlik” sekmesini tıkladığınızda ; hatalarla karşılaşıyorsanız, aşağıdaki çözüm size ilaç gibi gelecektir 🙂

Bütün bunların aşabilmek için, komut satırında tek bir satırlık kod yazmanız yeterlidir. (Next next next and finish olayları burada pek işe yaramıyor malesef).

Bunun için Visual studio command prompt u açıyoruz ve aşağıdaki kodları çalıştırıyoruz:

aspnet\_regsql -S (local)\SQLEXPRESS -E -A all -d MyDatabase

MyDatabase kısmını, şayet yeni bir veritabanı üzerinde bu işlemi gerçekleştirecekseniz, kendinize göre bir ad verebilirsiniz. yada, mevcüt bir veritabanı adı ile de ayni işlem yapabilirsiniz.

Kolay Gelsin:)
