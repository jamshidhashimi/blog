---
title: "INT vs UniqueIdentifier"
date: 2010-08-19T12:52:24
slug: int-vs-uniqueidentifier
categories: ["Programming General"]
tags: ["int", "types", "uniqueindentifier"]
aliases: ["/2010/08/19/int-vs-uniqueidentifier/"]
---

An identify value is an automatically incrementing integer that starts counting from a base seed value (such as 1, or 100, or 1000, whatever integer you choose), and increments by a value you specify, which is called an increment (such as 1, -1, 10, whatever integer you choose). The default seed is 1, and the default increment is 1. Because the values are never the same (they increment), an identify value often makes for a good column on which to base a primary key.

When you create an identity column in a table, you must also specify the data type as some form of integer. As you probably know, SQL Server supports several different integer types, each with different sizes (widths). They include:

|  |  |  |
| --- | --- | --- |
| Bigint | 8 bytes | -263 to 263-1 (SQL Server 2000 and 2005 only) |
| Int | 4 bytes | -2,147,483,648 to 2,147,483,647 |
| Smallint | 2 bytes | -32,768 to 32,767 |
| Tinyint | 1 byte | 0 to 255 |

When creating an identify column, always select the narrowest integer type that will meet your needs. If an Int will do, then don’t use Bigint, as you will just unnecessary be increasing the physical size of the index, which can hurt SQL Server’s performance.

A unique identifier column, like an identify column, is used to create unique values for each column in your table. But instead of using an incrementing value, instead it creates a unique value based on a special internal algorithm that creates what are called a Globally Unique Identifier (GUID), which is 16 bytes in size.

Right away, you should notice which unique column type — identify or unique identifier — will provide the best performance as a primary key. Because the unique identifier column will always be 16 bytes wide, it will always create a primary key index that is larger than any of the identity column options, and unless you have a special reason that is outside the scope of this question, should not be used as the basis as a primary key.

Instead, use one of the variations of the identity column, selecting the smallest one that meets your data’s needs. This way, you can ensure that index created by the primary key is as small as it can, helping to ensure overall better performance of your database, and at the same time ensuring entity integrity of your database tables.

Source : <http://www.intrafusion.co.uk/blog/sql-primary-key-int-vs-uniqueidentifier>
