---
title: "Redirect users to custom page with notification"
date: 2012-06-24T16:52:27
slug: redirect-users-to-custom-page-with-notification
categories: ["PHP"]
tags: ["ci", "ci redirect", "codeigniter redirect", "flash data", "flash messages"]
aliases: ["/2012/06/24/redirect-users-to-custom-page-with-notification/"]
---

In form registrations, and form operations which consists insert, update and delete actions; we often need to redirect user after a successful/unsuccessful operation(s).

To inform user about the fail or success of operations, you can set flash messages, which you can set manual messages for any operations you want. Flash messages automatically destroy themselves after page refresh.

In CodeIgniter, this operation can be done as following:

```
// run insert model to write data to db
if($this->staff_model->insertform($form_data,$userid) == TRUE) 
{
	//set success message for the end user
	$this->session->set_flashdata('msg',$this->lang->line('global_insert_successfull_msg'));
	// the information has therefore been successfully saved in the db                                                
	redirect('staff/home/getdetails','refresh');   // or whatever logic needs to occur
}
else
{  
	$this->session->set_flashdata('msg',$this->lang->line('global_insert_fail_msg'));
	redirect('staff/home/getdetails','refresh');    
}
```
