---
title: "İkili Ağaçlarda Arama(Binary Search Tree)"
date: 2009-11-13T13:00:58
slug: ikili-agaclarda-aramabinary-search-tree
categories: ["C#"]
tags: ["Binary Search Tree", "ikili ağaçlarda arama"]
aliases: ["/2009/11/13/ikili-agaclarda-aramabinary-search-tree/"]
language: "tr"
# note: 6 image(s) lost to dead hosts (tinypic/imageshack)
---

Ağaçların özel bir hali olan ikili ağaçlarda her düğümün (node) çocuklarının(child) sayısı azami 2 olabilir. Bir düğümün daha az çocuğu bulunması durumunda ( 0 veya 1) ağacın yapısı bozulmaz. Yapraklar(leaves) hariç bütün düğümlerin ikişer çocuğu bulunması ve yaprakların aynı derinlikte bulunması durumunda bu ağaca dengeli ağaç (balanced tree) denilir.

İkili ağaç veri yapısı, arama ve sıralama algoritmalarındaki hızı nedeniyle sıkça kullanılan veri saklama biçimlerinden bir tanesidir.

*[image no longer available: BinaryTree-Jamshid]*  
İki Ağaç örneği

Bu ağaç veri yapısını diğerlerinden ayıran ilk özellik her düğümün en fazla 2 tane dal içermesidir. İkinci özellik ise her düğümün bir değer taşımasıdır. Düğümün dalları arasında tam bir sıralama vardır. Sol daldaki değer düğümden küçük iken sağ daldaki değer düğümden büyüktür.

Ağaç yapısı üzerinde herhangi bir düğüme erişme sürecimize ağacı gezmek (traverse) denir. Bir ağacı ençok bilinen üç değişik yöntemle gezebiliriz :

**Ağacı Gezmek (Traverse)**  
———————–

1-InOrder: Sol düğüm-Kök(root) düğüm -Sağ düğüm  
2-PreOrder: Kök(root)düğüm-Sol düğüm-Sağ düğüm  
3-PostOrder: Sol düğüm-Sağ düğüm-Kök(root)düğüm

**Ağaca Düğüm Eklemek**  
——————-  
Ağaca düğüm eklemek için şu işlemleri yapıyoruz:

1. **Node (düğüm) sınıfımızı tanımlıyoruz**:  
*[image no longer available: Node-Class]*

2. **Ekleme sinifimiz yaziyoruz**:  
*[image no longer available: Ekleme-sinifi]*  
*[image no longer available: Ekleme-sinifi]*

3.**InOrder Traverse**  
*[image no longer available: Traverse]*

4.**Test Sinifimiz (Programi çalıştırıyoruz)**  
*[image no longer available: Test-Class]*

Kodlar Visual Studio 2008 da yazılmış ve derlenmiştir.
