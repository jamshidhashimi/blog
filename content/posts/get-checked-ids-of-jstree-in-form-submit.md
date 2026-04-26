---
title: "Get checked Ids of Jstree in form submit"
date: 2012-06-26T19:41:05
slug: get-checked-ids-of-jstree-in-form-submit
categories: ["Javascript"]
tags: ["get_checked", "javascript hidden fields", "jquery hidden field", "jstree checked ids", "jstree hidden field"]
aliases: ["/2012/06/26/get-checked-ids-of-jstree-in-form-submit/"]
---

Everyone, who worked with Jstree’s may face to this question: How to get the checked Ids of Jstree in form submit? here is the solution:

```
<script type="text/javascript>
function submitMe() {
	var checked_ids = [];
	$('#your-tree-id').jstree('get_checked',null,true).each(function(){
		checked_ids.push(this.id);
	});
	//setting to hidden field
	document.getElementById('jsfields').value = checked_ids.join(",");
}
</script>
```

```
<input type="hidden" name="jsfields" id="jsfields" value="" />
```
