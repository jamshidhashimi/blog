---
title: "Python ve C# farkı"
date: 2009-12-11T16:59:03
slug: python-ve-c-farki
categories: ["C#", "Python"]
tags: ["c# ve python farkı", "c# vs python", "difference between c# and python"]
aliases: ["/2009/12/11/python-ve-c-farki/"]
language: "tr"
---

Belki bu iki dilin farkı uzun uzun yazılabilir ama ben bu iki dilin arasındaki farkı çok güzel ve net açıklayan bir örnekle karşılaştım, işte o örnek:

```
using System;
using System.IO;

class Hello {
    static void Main() {
        FileStream file = new FileStream("file.txt", FileMode.OpenOrCreate,
        FileAccess.Read);
        StreamReader sr = new StreamReader(file);
        Console.WriteLine (sr.ReadToEnd().ToUpper());
    }
}
```

Yukarıdaki C# kodumuz file.txt dosyasının içindeki paragrafları okuyup, büyük harflere çevirmekte. Hatta hafızadaki dosya için açılan alanı (stream) da kapatmadık.

Aynı işlevi yapan python kodumuz ise şu:

```
print open(’file.txt’).read().upper()
```

Python’u sevdim 🙂
