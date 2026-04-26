---
title: "Scheme Programlama Dili Dersleri 4"
date: 2011-01-15T23:50:29
slug: scheme-programlama-dili-dersleri-4
categories: ["Programming General"]
tags: ["dr.scheme", "learn dr.scheme", "learn scheme", "scheme", "scheme code", "scheme programming", "scheme tutorial"]
aliases: ["/2011/01/15/scheme-programlama-dili-dersleri-4/"]
language: "tr"
# note: 2 image(s) lost to dead hosts (tinypic/imageshack)
---

**Matematik Fonksiyonlar**  
Scheme programlama dilinde mevcüt matematik fonksiyonlar

**(exp x)** e^x in sonucunu döndürür  
**(log x)** x sayısının logaritma değerini döndürür  
**(sqrt x)** x kökünün karesini döndürür  
**(max x1 x2…)** Verilen listeden en büyük sayıyı döndürür  
**(min x1 x2…)** Verilen listeden en küçük sayıyı döndürür  
**(quotient x1 x2)** x1/x2 kesrinin bölümünün sonucunu döndürür  
**(remainder x1 x2)** x1/x2 kesrinin bölümünün sonucunu döndürür  
**(modulo x1 x2)** x1 in x2 ye modüle sonucunu dündürür  
**(gcd num1 num2 …)** Verilen listenin en büyük ortak böleni döndürür  
**(lcm num1 num2 …)** Verilen listenin en küçük ortak çarpanını döndürür  
**(expt base power)** taban^küvvet sonucunu döndürür  
**(sin x),(cos x),(tan x),(asin x),(acos x),(atan x)** trigonometrik fonksiyonlar

**Örnek**

>(remainder 100 15)  
10  
>(quotient 100 15)  
6  
>(= (remainder x 2) 0)) ;;(even? x)?  
>(max 3 5)  
5  
>(min 3 5)  
3  
>(abs -10)  
10  
>(numerator (/ 6 4))  
3  
>(denominator (/ 6 4))  
2  
>(numerator (/ 15 4))  
15  
>(numerator (/ 12 8))  
3  
> (denominator (/ 12 8))  
2  
  
**ceiling**: x’ten küçük olmayan en küçük değeri döndürür  
**truncate**: Mutlak değeri x’in mutlak değerinden büyük olmayan x’e en yakın değeri döndürür.  
**round**: x’e en yakın değeri döndürür. Eğer x iki değer arasında ise, çift sayıya dönüştürülür

**Örnek**

> (round 4.3)  
4.0  
> (round 4.5)  
4.0  
> (round 4.51)  
5.0  
> (round 4.9)  
5.0  
> (truncate 4.9)  
4.0  
> (ceiling 4.9)  
5.0  
> (ceiling 4.2)  
5.0  
  
**Mantıksal Operatörler**

And – Eğer bütün durumlar doğru olursa, doğru döndürür  
*[image no longer available]*

**Or**– Eğer en az bir koşul doğru olursa, sonucu doğru döndürür  
*[image no longer available]*

**Not**– tersine döndürür  
![](/images/posts/scheme-programlama-dili-dersleri-4/zu1grl.png)

**Örnek**

(and (< 1 2) (> 2 3))?  
#f

(or (<= 1 0) (= 1 1))?  
#t

(not (= 1 0))?  
#t  
**Örnek2**: Çalıştırın ve sonucu kendiniz görün

(define a 5)  
(define b 3)  
(or  (> a 9) (< b 2))  
(and (< a 7) (> b 3))  
(and (= a 5) (> b 3))  
(or  (not (= a 5)) (> b 2))  
(or  (> a b) (not (> b 7)))
