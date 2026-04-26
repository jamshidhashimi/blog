---
title: "Scheme Programlama Dili Dersleri 2"
date: 2011-01-15T23:20:22
slug: scheme-programlama-dili-dersleri-2
categories: ["Programming General"]
tags: ["dr.scheme", "learn dr.scheme", "learn scheme", "scheme", "scheme code", "scheme programming", "scheme tutorial"]
aliases: ["/2011/01/15/scheme-programlama-dili-dersleri-2/"]
language: "tr"
# note: 4 image(s) lost to dead hosts (tinypic/imageshack)
---

**Scheme Programlama Ortamı**

Programlama ortamı olarak Drscheme programı kullanmaktadır. DrScheme, Scheme programlama dili için grafiksel bir ortam sunmaktadır.  
DrScheme, enteraktif ve tümleşik bir programlama ara yüzü sağlamakta olup programlama öğrenimini yeni başlayanları göz önünde bulundurularak yeterince kullanılabilir bir araç olarak sunulmaktadır.  
Aşağıdaki resimden bu geliştirme ortamının basitliği ve sadeliğini görebileceksiniz

*[image no longer available]*

İşlenen her satır kod, sadece program çalışma sırasında inceleniyor.(Derlenmiş koddan daha yavaş)  
DrScheme ortamını daha iyi anlamanız için, aşağıdaki resimde bir programı nasıl çalıştırıp deneyebileceğinizi gösterdim.  
*[image no longer available]*

Scheme ile ilk programımızı yazalım

*[image no longer available]*

Programınızı kaydetmek için, “File -> Save Definitions” seçeneğinden kaydebilirsiniz.  
Şayet programınızı bilgisayarınızın bir yerinde yüklemek isterseniz, aşağıdakı formatte bunu gerçekleştirebilirsiniz: (load “c:\\\\ilk-program.scm”)

**Yorumlar**

Yorumlar, yıllar sonra programınızın ne amaçla yazıldığını hatırlamak için size yardımcı olacaktır.  
Yazdığınız programlar, başkaları tarafında okunabilmeli ve yorumlarınız sayesinde başkaları tarafından kolayca anlaşılmalıdır.  
Scheme programlama dili ortamında yorumlar noktalı virgülle (;) başlayıp satır sonuna kadar devam ediyor. Blok şeklinde yorum koyma yoktur. Bu yüzden her satır tek tek işaretlenmelidir.  
Örnek

(display “S.A. CW Ahalisi”) ; Bu bir yorum satrıdır

**İfadeler**

Scheme programlama dillerinde ifadeler aşağıdaki gibi gösterilmektedir. Sitede kodlar bozulabilir diye, resim olarak ekledim.

*[image no longer available]*

Aşağıdaki ifadeleri kendiniz çalıştırıp, çözümünü bakabilirsiniz

Girdi: (+ (/ (\* (+ 3 4) (- 8 3)) 7) 9)  
Çıktı: 14  
Aşağıdaki ifadeyi, Scheme programlama ifadelerine dönüştürünüz:  
Girdi: (8 + ((-4) + 4 \* 2 \* 8)) / (2 \* 2)  
Çıktı: ?  
İfadeler noktasında, fazladan parantez koymayınız. Hata verecektir.  
Girdi: ((+ 8 4))  
Çıktı: Hata

Bazen ifadeleri çalıştırmak istemezsiniz. Bu durumda ifadelerin başına tırnak işareti koyduğunuzda ifadeniz çalışmayıp, olduğu gibi yazdırılacaktır.

Girdi: (+ 4 5)  
Çıktı: 9  
Girdi: ’(+ 4 5)  
Çıktı: (+ 4 5)

Devamı gelecek inş.
