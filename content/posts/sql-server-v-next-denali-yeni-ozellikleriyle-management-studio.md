---
title: "SQL Server v.Next (Denali) : Yeni özellikleriyle Management Studio"
date: 2011-01-18T00:54:51
slug: sql-server-v-next-denali-yeni-ozellikleriyle-management-studio
categories: ["Programming General", "SQL Server 2008"]
tags: ["management studio", "management studio 2008", "v.next"]
aliases: ["/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/"]
language: "tr"
---

SQL Server Denali; management studio tarafında da önemli özellikleriyle beraber gelmektedir. Bu sürümdeki management studio, çok daha kullanışlı, kullanıcı dostu ve özellikle visual studio ortamına alışan .Net geliştiricilerini memnun edecek şekilde tasarlanmış ve kullanıma sunulmuştur.

SQL Server Denali tarafında sağlanan birkaç önemli özelliğe bu makalede değineceğim.

**Çoklu Ekran Desteği**

Geliştiricilerin ve özellikle yazılım projelerini geliştirirken veya sunumlarda örnek uygulama yapanların en çok ihtiyaç duyduğu özellik olan Çoklu Ekran Desteği nihayet SQL Server Denali ile gelmiş durumda. SQL Server Denali’nin beraberinde gelen Management studio ile, sorgu pencerelerinizi tutup, ana pencereden ayırabilir ve ekranda dilediğiniz konuma getirebilirsiniz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/management_studio1.png "management_studio1")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/management_studio1/)

Dilediğiniz miktarda sorgu ekranı açabilir ve bu pencereleri dilediğinize konuma yerleştirebilirsiniz. Ana pencereden ayırdığınız sorgu penceresini tam ekran olarak açabilir ve sadece SQL kodlarına odaklanabilirsiniz.

Hatırlayabilmeniz, ve her iki pencere arasındaki farkı daha iyi görebilmeniz için; Sql server 2008 R2 için aşağıdaki resme bakabilirsiniz:

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/sqlserver2008R2.png "sqlserver2008R2")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/sqlserver2008r2/)

**Code Snippet**

SQL Server Denali ile gelen ikinci bir diğer özellik ise, beraberinde getirdiği Code Snippet desteğidir. Bu özellik vasıtasıyla daha hızlı bir biçimde T-SQL kodların yazımı sağlanmış ve özellikle sık kullanılan küçük kod parçacıklarının tekrar tekrar yazılmasının önüne geçilmiştir.  
İki tür snippet mevcuttur: Birincisi; Expansion Snippets (Kolaylıkla eklenebilecek kod parçaları, örneğin Tablo oluştururken) ve diğeri; Surround-with Snippets (Yazılan kodu kapsayacak SQL ifadeleri ekler, örneğin Begin End ifadeleri gibi).  
Code snippet’e erişmek için, açılan sorgu ekranında sağ tıkladıktan sonra aşağıdaki ekranda gösterildiği gibi erişim sağlayabilirsiniz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/codeSnippet.png "codeSnippet")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/codesnippet/)

“Insert Snippet” i seçtikten sonra çıkan seçeneklerden örnek olarak “Table” seçelim devamında aşağıdaki resimlerde gösterildiği üzere snippet aracılığıyla tablo oluşturma kodlarını kolaylıkla edinebilir ve sonrasında kendi ihtiyaçlarımıza göre değiştirebiliriz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/CodeSnippet2.png "CodeSnippet2")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/codesnippet2/)

“Create Table” öğesinin bize getirdiği kod parçası aşağıdaki gibi olacaktır.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/codeSnippet3.png "codeSnippet3")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/codesnippet3/)

Görüldüğü gibi, tablo oluşturmak için ihtiyacımız olan standart T-SQL kodları oluşturulmuş ve bundan sonrası ise, bu kodların ihtiyaçlarımıza göre düzeltilmesi ve genişletilmesi olacaktır.

Snippet’lerin bir diğeri, yukarıda bahsedildiği üzere “Surround-with”  adındadır. Özellikle yazdığımız kod parçacıklarının if, while veya Begin ve End lerle açılıp kapanması sağlanmıştır. Bu kontrollerin yazımı için vakit harcamaya gerek kalmaksızın, “Surround-with”’in getirdiği kolaylıkla işlerimizi hızlandırabilir ve hatasız ve verimli kod yazımını sağlayabiliriz.

Surround-with özelliğini kullanmak için öncelikle kod satırımızı seçili hale getirdikten sonra, üzerine sağ tıklayıp çıkan ekrandan “Begin”, “If” veya “While” seçeneklerinden birini seçeceğiz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/surroundWith2.png "surroundWith2")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/surroundwith2/)

Herhangi bir seçeneği seçtikten sonra, o ifadenin standart formatıyla kodlarımızın kapsüllendiğini göreceğiz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/surroundWith.png "surroundWith")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/surroundwith/)

Ayrıca Tools\“Code Snippet Manager” seçeneğinden ayrı bir pencereden code snippetleri yönetebilirsiniz. Ekleyebilir, silebilir veya harici kaynaklardan edinmiş olduğunuz code snippetlerini dahil edebilirsiniz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/snippetManager.png "snippetManager")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/snippetmanager/)

**Hata Listesi**

Bir diğer önemli özellik; syntax veya kodlamarının Visual studio ortamında olduğu gibi, ayrı bir hata listesinde gösterimidir. Artık kodu çalıştırdıktan sonra, çıkan hata ekranı üzerine tıklayıp, hata satırına geçtikten sonra hatayı düzeltme gibi uzun ve verimsiz bir yoldan ziyade, SQL kodlarınızı henüz yazarken anlık olarak hataları varsa görebiliyor, ve düzeltebiliyorsunuz.

[![](/images/posts/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/ErrorList.png "ErrorList")](https://jamshidhashimi.com/2011/01/18/sql-server-v-next-denali-yeni-ozellikleriyle-management-studio/errorlist/)

Yukarıda görüldüğü gibi, hatalı yazılan kod satırlarının hatalarını aşağıda “Error List” bölümünde anlık olarak görebiliyoruz. Bu vesileyle kodlama tarafındaki hatalarını daha hızlı farkedip, daha kolay düzenleyebilir ve daha verimli çalışabiliriz.
