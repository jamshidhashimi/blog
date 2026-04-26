---
title: "Scheme Programlama Dili Dersleri 5"
date: 2011-01-16T00:48:03
slug: scheme-programlama-dili-dersleri-5
categories: ["Programming General"]
tags: ["dr.scheme", "learn dr.scheme", "learn scheme", "scheme", "scheme code", "scheme programming", "scheme tutorial"]
aliases: ["/2011/01/16/scheme-programlama-dili-dersleri-5/"]
language: "tr"
---

**Rastgele Sayılar**Çok gariptir – Her çalıştırıldıklarında ayni sonucu vermezler.  
Rastgele sayılar, [0,n) aralığında bir sayı verirler. Program veya bu rastgele komutunu barındıran herhangi bir kod parçacığı her çalıştırıldığında, bize o aralıkta farklı bir değer üretirler.

Yukarıdaki gösterimde fark ettiğiniz gibi, random komutunun yanında geçirdiğimiz herhangi bir n sayısı üretilecek olan değerler içerisinde değildir.

**Örnek**

> (random 3)  
0  
> (random 3)  
2  
> (random 3)  
1  
> (random 3)  
2

Rastgele sayıları farklı yapılarıyla kullanabiliriz, (random-symbol) :

> (random-symbol ’Hadim ’Ahmet ’Mehmet)  
’Hadim  
> (random-symbol ’Ahmet ’Hadim ’Mehmet)  
’Mehmet  
> (random-symbol ’Mehmet ’Ahmet ’Hadim  
’Ahmet  
> (random-symbol ’Hadim ’Mehmet ’Ahmet)  
’Hadim

**Verilerde Girdi ve Çıktı**

Komutların kullanımı

**Girdi** -> **read** veya **read-char**  
**Çıktı** -> **write** ve **display**

(read) fonksiyonunu kullandığınızda programınız kullanıcıdan veri girişi yapılması için duracaktır.

**Örnek**

(define r (read))  
(display r)

Program çıktısı: r (girdiğiniz herhangi bir değer)  
  
**Let**

Let komutuyla programın belirli bir alanına değişkenlere isteğiniz üzere değer ataması yapabilirsiniz. Belirlenen değerler o kod blok’u içinde geçerlidir. Yorumlayıcı kod blokundan çıktığında, değişkenlere atanmış değerler artık geçerli olmayacaktır.

**Örnek 1**

(let ( (a 100) (b 50) )  
(gcd a b))

Çıktı:  
50

**Örnek 2**

Bu örnekte gördüğünüz gibi; ilk olarak x=100 olarak atanan değer; let komutu kullanarak x=16 tanımlanmıştır ve program x’e atanan ikinci değere göre çalışmaktadır.

(define x 100)  
(let ((x 16))(sqrt x))  
(sqrt x)  
4  
10

**Let\***

Let\*, Let komutuna benzerdir ancak değer bindirme işlemi sıralı bir şekilde soldan sağa doğru yapılmaktadır.

Bir örnek ile daha iyi anlarsınız:

**Örnek 1**

(define x 20)  
(let ((x 1)  
(y x))  
(+ x y))

X=1 olarak atanacak, ve y=20 ataması olacaktır. İkinci x, global x’teki değeri kullanmaktadır.

**Örnek 2**

Ama let\* ile,

(define x 20)  
(let\* ((x 1)  
(y x))  
(+ x y))

X=1 olarak atandıktan sonra, y=1 ataması gerçekleşecektir. Üstteki örneğin tersine, x artık global x=20 değerini kullanmamaktadır.  
  
**Soru:** Program çıktılarını yazınız

**Soru 1**

(define x 10)  
(let ((x (\* x x)) (y (+ x 10)))  
(+ x y 10))  
  
**Soru 2**

(define x 10)  
(let\* ((x (\* x x)) (y (+ x 10)))  
(+ x y 10))

5. Dersin sonu.
