---
title: "Scheme Programlama Dili Dersleri 3"
date: 2011-01-15T23:27:12
slug: scheme-programlama-dili-dersleri-2-2
categories: ["Programming General"]
tags: ["dr.scheme", "learn dr.scheme", "learn scheme", "scheme", "scheme code", "scheme programming", "scheme tutorial"]
aliases: ["/2011/01/15/scheme-programlama-dili-dersleri-2-2/"]
language: "tr"
# note: 5 image(s) lost to dead hosts (tinypic/imageshack)
---

**Değişkenler**

Değişken, bir programda kullanılacak bir veri nesnesini gösterir. Bir değişkenin adı, değeri ve tipi vardır.  
Değişken adı, veri nesnesinin adıdır.  
Değişken değeri, değişkenin değerini barındırır ve program çalışma esnasında bir veya birden fazla defa değişebilir.  
Her değişken, hafızada bir yer tutar.  
Ad, değişkenin hafızadaki yerini tutarken(Nerede), değer, değişkenin içeriğini tutar(Ne).  
Aşağıdakı resmi olayı daha iyi anlamanız açısından ekledim. Aşağısında Scheme kodu mevcüttür.

*[image no longer available]*

Scheme Kodu:  
*[image no longer available]*

Aşağıdaki örnekleri kendiniz uygulayabilirsiniz:  
  
> (define x 3)  
> x  
3  
> (define x 12)  
> (+ x 3)  
15  
> (define x 5)  
> (define y x)  
> (\* x y)  
25

Scheme programlama dilinde, C++ ve Java dillerinin tersine, değişkenler için tip tanımlamanıza gerek yoktur. Kodlamayı kolaylaştırmak amaçlanmıştır.  
Resimde gördüğünüz üzere, tip tanımlamadan değişkenlerimize değerler atabiliyoruz ve hata almadan ekrana yazdırabiliyoruz.

*[image no longer available]*

Değişkenlerimizin değerlerini değiştirmek için şu formatı kullanırız:  
(set! var\_name var\_value)   
set! ve define arasındaki fark;  
-Define; yeni atama yapar  
-set!; mevcut atamaları değiştirir

Örnek:

> (define a 5)  
> a  
5  
> (set! a 10)  
> a  
10

Aşağıdaki örnekleri uygulayabilirsiniz  
  
(define x 10)  
(define y (\* x 2))  
(define z (/ (+ x y) 2))  
(+ x y z)

**Tip Yüklemleri (Type Predicates)**

Scheme programlama dilinde Tip Yüklemleri şunlardır:  
(procedure? x)       x fonksiyon ise true döndürür  
(null? x)           x boş bir liste ise true döndürür  
(zero? x)           x sıfır ise true döndürür  
(odd? x)           x tek ise true döndürür  
(even? x)           x çift ise true döndürür  
(boolean? x)        x Boolean ise true döndürür  
(number? x)          x sayi ise true döndürür  
(pair? x)          x bir çift ise true döndürür  
(symbol? x)          x bir sembol ise true döndürür

Daha iyi anlamanız açısında aşağıdaki örneği inceleybilirsiniz

*[image no longer available]*

**İlişkisel Operatörler (Relational Operators)**

İlişkisel Operatörler Scheme dilinde mevcuttur:  
(= x 1)      x, 1 ise true döner  
(< x y)      x, y dan küçük ise true döner  
(<= x y)      x, y dan küçük veya eşitse true döner  
(> x y)      x, y dan büyük ise true döner  
(>= x y)      x, y dan büyük veya eşit ise true döner  
(eq? x y)      x ve y ayni ise true döner  
(eqv? x y)      x ve y işlevsel olarak ayni ise true döner  
(equal? x y)      x vey a ayni yapıda olup ayni içeriğe sahip ise true döner

Örnek:  
*[image no longer available]*
