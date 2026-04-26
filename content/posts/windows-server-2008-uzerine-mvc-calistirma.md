---
title: "Windows Server 2008 üzerine MVC çalıştırma"
date: 2010-12-14T10:03:03
slug: windows-server-2008-uzerine-mvc-calistirma
categories: ["Microsoft", "Windows Server 2008"]
tags: ["application pool integrated mode", "iis", "iis mvc", "iis üzerine mvc", "mvc", "mvc on windows server 2008"]
aliases: ["/2010/12/14/windows-server-2008-uzerine-mvc-calistirma/"]
language: "tr"
# note: 1 image(s) lost to dead hosts (tinypic/imageshack)
---

Windows Server 2008 üzerine MVC çalıştırmak için öncelikle websiteniz Asp.net 4.0 desteğinin bulunduğu bir Application Pool’da bulunmalıdır. Sonrası yine bulunduğu Application Pool’un “integrated mode” a olması gerekmektedir. Yoksa MVC projeniz çalışmayacaktır.

Websitenizin kullandığı Application Pool’u “integrated” Mode a aşağıdaki adımları izleyerek atayabilirsiniz:

Ilk olarak IIS Manager i açın; sonrası Application Pools kısmına girdikten sonra sitenizin kullandığı Application Pool’u seçin; (Oluşturmadıysanız öncelikle Pool’u oluşturmanız gerek) daha sonra kullanılan Application Pool üzerine sağ tıklayarak “Advanced Settings” ı tıkladıktan sonra karşınızda aşağıdaki gibi bir ekran çıkacaktır:

*[image no longer available: MVC Application on IIS]*

Yukarıdada görüldüğü gibi; Managed Pipelin Mode kısmından “Integrated” seçeneğini seçmelisiniz. Ayni şekilde yine görüldüğü üzere makalenin başlığındada söylediğim .Net 4.0 desteğini “.Net Framework Version” nin v4.0 olarak ayarlanmış olduğunu göreceksiniz.

Bu şekilde herhangi bir sorun yaşamadan MVC projenizi çalıştırabilirsiniz.
