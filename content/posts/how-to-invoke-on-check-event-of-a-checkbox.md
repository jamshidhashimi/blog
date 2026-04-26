---
title: "How to invoke on check event of a checkbox[]"
date: 2012-09-01T15:24:38
slug: how-to-invoke-on-check-event-of-a-checkbox
categories: ["Javascript"]
tags: ["checkbox", "checkbox oncheck", "checked", "jquery", "jquery check", "oncheck"]
aliases: ["/2012/09/01/how-to-invoke-on-check-event-of-a-checkbox/"]
---

Let’s learn how to invoke a checkbox[]’s checked event.

Our checkbox:

```
<input type="checkbox" id="check[]" name="check[]" value="<?=$item->id?>" class="checkbox" onchange="javascript: showhidecheckbox('check[]','sendto','1');" />
```

our onchange event call showhidecheckbox() javascript function. This function is used to detect the checkbox status and show or hide a div named “sendto”.

```
function showhidecheckbox(checkboxname,name1)
{
    var d1=document.getElementById('sendto').style;
    if($('input[name="check[]"]:checked').length > 0)
    {
        d1.display ='block';    
    }
    else
    { 
             d1.display ='none';
    }
}
```

Now, you can hide or show your sendto div when your checkbox is checked or unchecked.
