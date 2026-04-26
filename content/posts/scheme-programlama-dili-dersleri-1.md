---
title: "Scheme Programlama Dili Dersleri 1"
date: 2011-01-15T23:19:52
slug: scheme-programlama-dili-dersleri-1
categories: ["Programming General"]
tags: ["dr.scheme", "learn dr.scheme", "learn scheme", "scheme", "scheme code", "scheme programming", "scheme tutorial"]
aliases: ["/2011/01/15/scheme-programlama-dili-dersleri-1/"]
language: "tr"
# note: 1 image(s) lost to dead hosts (tinypic/imageshack)
---

**Scheme nedir?**

Scheme bir programlama dilidir.  
Scheme çok anlamlı, şeffaf, küçük ve kolay bir şekilde yazılabilecek bir programlama dilidir.  
Scheme problemlerin çözümünde algoritmik yaklaşımı destekler. Bu yüzdendir ki çoğu üniversitede Bilgisayara Giriş dersi olarak verilmektedir. Türkiye’deki üniversitelerde Dokuz Eylül Üniversitesi ve ODTÜ da bu dil Bilgisayara Giriş dersi kapsamında verilmektedir.  
Birçok programlama stil ve paradigmalarını desteklediği gibi Fonksiyonel ve nesneye yönelik programlama stillerini de destekler.  
Scheme, olabildiğince küçük ve sade olarak tasarlanmıştır.

**Tarihi**  
1975 yılında, Guy Steele ve Geral Sussman MIT laboratuarında şeffaf ve sade semantığı olan bir dil tasarlamak istemekteler.  
Bu hedef doğrultusunda Scheme meydana geliyor.  
Steele ve Sussman Programlama dili geliştirme esnasında dile birçok özellik katmanın iyi bir fikir olmadığına kanaat getirmişler ve mevcüt zayıflıkları ve kısıtlamaları kaldırmayı hedeflemişler.  
Dil standard sayfası semantiklerinin resmi ve tanımsal anlamları dahil 50 sayfadır.  
Not: Java’ninki 684 sayfadır.  
Scheme, Düyada ilk fonksiyonel programlama dili olan lambda calculus’tan etkilenmiştir.  
Lisp’in bir lehçesidir. (Lisp Fortran’dan sonra ikinci eski programlama dilidir) ve syntax in birçoğunu Lisp ile paylaşmaktadır.  
Mevcüt Lisp lehçelerine göre daha şeffaf, modern ve sade olarak tasarlanmak istenmiştir.  
Aşağıda görebildiğiniz gibi parantez manyağı olacaksınız, şimdiden hazır olun 🙂

*[image no longer available]*

**Scheme Programlama Dili Özellikleri**

Scheme çok yönlü bir dildir ve aşağıdaki alanlar için kullanılabilir:

-Öğretim aracı olarak  
-Script yazılımları için  
-Genişletilmiş dil olarak uygulamaların içinde gömülü  
-Yeni dillerin oluşumu için

Yukarıda bahsettiğim özellikler arasında en çok kullanılanı, öğretim amacı olarak kullanılma yönüdür. Scheme içinde barındırdığı şeffaf yazım kuralları ile programcı adayları ve öğrencilere büyük kolaylıklar sağlamaktadır. Yazım kurallarıyla uğraşmaktansa eldeki problemlere dayalı çözümler üretmelerini sağlamaya zorlamaktadır. Boyutu ve sade oluşuyla kolayla öğrenebileceğiniz bir dildir. Yukarıda bahsettiğim gibi, çeşitli programlama pardigmalarını desteklemekle beraber nesneye yönelik, imperative ve fonksiyonel programlama stillerini destekler. Dilin standartlarının 50 sayfaya yakın oluşundan dil içerisinde diğer dillere nazaran karmaşık ve fazladan komutlar ve fonksiyonler bulunmadığı için program yazarken bu konuda sıkıntı çekmezsiniz. Sırf elinizdeki problemlere göre çözüm üretip daha çok algoritmayi düşünürsünüz.  
Scheme programlama dili çoğu zaman oku-hesapla-yazdır döngüsü (Read-evaluate-print Loop) REPL ile anılır.

Okumak(Read) = Bir sonraki Scheme ifadesini okur  
Hesapla (Evaulate) = İfadenin sonucunu hesaplar  
Yazdır (Print) = Sonucu ekrana yazdır
