---
title: "Facebook tarzı zaman gösterimi (tarih, saat)"
date: 2012-11-08T16:14:04
slug: facebook-tarzi-zaman-gosterimi-tarih-saat
categories: ["Programming General"]
tags: ["facebook style datetime", "facebook tarih", "facebook time"]
aliases: ["/2012/11/08/facebook-tarzi-zaman-gosterimi-tarih-saat/"]
language: "tr"
---

```
function get_time($timestamp) {
	$timestamp = strtotime($timestamp);
	$diff = time() - $timestamp;

	if ($diff <= 0) {
		return 'Şimdi';
	}
	else if ($diff < 60) {
		return grammar_date(floor($diff), ' saniye önce');
	}
	else if ($diff < 60*60) {
		return grammar_date(floor($diff/60), ' dakika önce');
	}
	else if ($diff < 60*60*24) {
		return grammar_date(floor($diff/(60*60)), ' saat önce');
	}
	else if ($diff < 60*60*24*30) {
		return grammar_date(floor($diff/(60*60*24)), ' gün önce');
	}
	else if ($diff < 60*60*24*30*12) {
		return grammar_date(floor($diff/(60*60*24*30)), ' ay önce');
	}
	else {
		return grammar_date(floor($diff/(60*60*24*30*12)), ' yıl önce');
	}
}

function grammar_date($val, $sentence) {
	if ($val > 1) {
		return $val.str_replace('(s)', 's', $sentence);
	} else {
		return $val.str_replace('(s)', '', $sentence);
	}
}
```
