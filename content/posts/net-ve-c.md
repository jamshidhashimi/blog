---
title: ".NET ve C#"
date: 2009-11-18T13:25:22
slug: net-ve-c
categories: ["Programming General"]
tags: [".Net", "C#"]
aliases: ["/2009/11/18/net-ve-c/"]
---

Bu makalemde .Net ve C# ile ilgili ayrıntılı bilgi vermekle beraber mevcüt kavram farklarına da değineceğim.

C# Programlama Dili(si şarp şeklinde telafuz edilir), Microsoft’un geliştirmiş olduğu yeni nesil dilidir. Yine Microsoft tarafından geliştirilmiş .NET teknolojisi için geliştirilmiş dillerden biridir. Microsoft tarafından geliştirilmiş olsa da ECMA ve ISO standartları altına alınmıştır.

C#’ın isimlendirilmesinde, bir melodi anahtarı olan C# Major’den esinlenilmiştir. C# gibi, C programlama dili temel alınarak tasarlanan C++ programlama dilinin isimlendirilmesinde ki yaratıcılığına ulaşma çabası olarak görülebilir(C dilinde bir sayı değişkenini bir arttırma işlemi için ++ soneki veya başeki kullanılır).

Bu dilin tasarlanmasına Pascal, Delphi derleyicileri ve J++ programlama dilinin tasarımlarıyla bilinen Anders Hejlsberg liderlik etmiştir.

C# programlama dilide diğer programlama dillerinin oluşumu gibi önceki teknolojinin en iyi yanları üzerine inşa edilmiştir. Mikrosoft tarafından .NET teknolojisini desteklemek amacıyla geliştirilmiştir.

C# ; C,C++ ve Java dilleri örnek alınarak oluşturulmuştur. C# ı anlamak için öncelikle bu dillerin kısa tarihlerini gözden geçirmek gereklidir.

C# ın .Net teknolojisiyle ortaya çıkması gibi C dilide yapısal programlama(structured programming) devrimi ile ortaya çıkmıştır. **Dennis Ritche** tarafından 1970 yılında icat edildi. C den öncede pascal gibi birçok programlama dili vardı ancak bu diller piyasanın taleplerine karşılık veremiyordu. Bu programlarda sıpagetti kod adı verilen bir yapı kullanılıyordu. Bu yapıylada büyük programları yazmak oldukça zordu. Yapısal dil mantığını kullanan C kısa zamanda programcıların en çok kullandığı dil haline geldi.

C#, güçlü, modern, nesne tabanlı ve aynı zaman type-safe(tip-güvenli) bir programlama dilidir.Aynı zamanda C#, C++ dilinin güçlülüğünü ve Visual Basic’ in ise kolaylığını sağlar.Büyük olasılıkla C# dilinin çıkması Java dilinin çıkmasından bu yana programcılık adına yapılan en büyük gelişmedir. C#, C++ ’ın gücünden , Visual Basic ’in kolaylığından ve Java ’nın da özelliklerinden faydalanarak tasarlanmış bir dildir. Fakat şunu da söylemeliyiz ki, Delphi ve C++ Builder ’daki bazı özellikler şimdi C# ’da var. Ama Delphi ya da C++ Builder hiçbir zaman Visual C++ ya da Visual Basic ’in popülaritesini yakalayamamıştır.

C ve C++ programcıları için en büyük sorun, sanırım hızlı geliştirememedir. Çünkü C ve C++ programcıları çok alt seviye ile ilgilenirler.Üst seviyeye çıkmak istediklerinde ise zorlanırlar.Ama C# ile artık böyle bir dert kalmadı.Aynı ortamda ister alt seviyede isterseniz de yüksek seviyede program geliştirebilirsiniz.C# dili Microsoft tarafından geliştirilen .NET paltformunun en temel ve resmi dili olarak lanse edilmiştir.C# dili Turbo Pascal derleyicisini ve Delphi ’yi oluşturan takımın lideri olan Anders Heljsberg ve Microsoft’da Visual J++ takımında çalışan Scott Wiltamuth tarafından geliştirilmiştir.

1970 lerin sonlarına doğru bir çok projenin boyutu C programlama dilinin ve yapısal programlama tekniğinin sınırlarını aşmış hale gelmişti. Bu problemi çözmek amaçlı nesne yönelimli (object oriented) programlama tekniği gelişmeye başladı. Çok yaygın bir dil olan C ise nesne yönelimli programlamaya C++ ile terfi etmiş oldu. C++, C dilinin bütün özelliklerini taşımaktadır.1979 yılında Bjarne Stroustrup tarafından Murray Hill, New jersey’deki Bell Labratuvarlarında oluşturulmaya başlanmıştır. Bugün hala yüksek performanslı kod geliştirmek için C++ etkin bir dildir.

Programlama dillerindeki bir sonraki gelişme Java ile olmuştur. Javanın söz dizimi C++ a benzemektedir Ayrıca nesne yönelimli programlama mantığıyla yazılmıştır. Javadan önce programların bir çoğu belirli bir CPU ve belirli bir işletim sistemi için yazılıyor ve derleniyordu. Birçok CPU in ve işletim sisteminin birleştirildiği internetin çıkışıyla birlikte taşınabilirlik problemini çözmek amaçlı Java oluşturuldu. Java programın kaynak kodunu bytecode denilen ara bir dile çevirir. Bu kodlar daha sonra Java Sanal Makinesi (Java Virtual Machine) tarafından çalıştırılır. Bu, JVM yüklü olan her bilgisayarda CPU ve işletim sisteminden bağımsız olarak kod geliştirmeye olanak sağıyordu. C ve C++ derlendiğinde her zaman makine kodu elde ediliyordu. Bytecode kavramı ise kökten bir farklılık gösteriyordu.

Java internet ortamında taşınabilirliği başarmış olmasına rağmen bazı konularda yetersiz kalmaktaydı. Örneğin bir dilde yazılan kod başka bir dilde yazılmış projede kullanılamıyordu.Ve Java windows ile tam olarak uyum sağlayamıyordu.

Bu ve diğer dezavantajlar sebebiyle microsoft 1990 lı yılların sonlarında C# ı geliştirdi. Ve .NET teknolojisine tam uyumlu bir programlama dili oldu.

VB.NET ve C++.NET ede .NET destek vermektedir Ancak bu dillerin temellerinde .NET olmadığı için birçok eksiklikleri ve sorunları vardır.

C# ile .NET ortamında konsol uygulaması geliştirebilir, windows için program yazılabilir, ASP.NET ile web tabanlı programlar yazabilir,mobil uygulama geliştirebilir, DLL ler yazabilirsiniz.

.NET in çalışma mantığıda Javanınkine benzemektedir. .NET kodu önce IL (ara dil) e derler. Ve bu IL kodu çalıştırılmak istendiği zaman .NET CLR (Common Language Runtime-Ortak Çalışma Zamanı) JIT derleyicilerini kullanarak makine diline çevirir. CLR makine diline çevrilmiş program kodunu ön bellekte tutar. Bu büyük performans artışına sebep olurken sistemin hafızasında oldukça büyük bir yer işgal eder.

CLR, .NET te programların çalışmasını kontrol eden ve işletim sistemiyle program arasında yer alan birimdir.

.NET içerisinde farklı dildeki DLL leri kullanabilme kolaylığı sağlayan CTS (Common Type System) özellği vardır. CTS ile VB.NET, C++.NET içerisinde kullanılan veri türleri arasında uyumluluk oluşmuştur. Böylelikle tip güvenliği sağlanır ve herhangibir .NET uyumlu dilde yazılan bir program diğer .NET uyumlu dillerdede sorunsuz bir şekilde çalışır.
