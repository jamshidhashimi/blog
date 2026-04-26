---
title: "Sort table with jQuery Tablesorter"
date: 2013-02-13T21:30:03
slug: sort-table-with-jquery-tablesorter
categories: ["Javascript"]
tags: ["jquery sort", "jquery tablesorter", "persian sort", "sort data", "sort table"]
aliases: ["/2013/02/13/sort-table-with-jquery-tablesorter/"]
---

Applications in general have plenty of data listing sections where the users see lists of data, and go for details if they are interested in. Often, we are asked to provide lists(tables) where users can make sort over existing column headers. This feature is generally asked by clients when there you have numbers and date information on your data.

so what is the solution? I have come with a great solution provided by [Jquery Tablesorter](http://tablesorter.com/docs/ "Jquery Tablesorter") plugin. This plugin can easily and efficiently accomplish the asked feature.

You can start using this plugin by firstly including this two line in your head section of the your page with proper path of the files to be used. [jQuery](http://jquery.com/download/ "Jquery download") and [tablesorter.js](http://tablesorter.com/docs/#Download "Tablesorter plugin") files.

```
<script type="text/javascript" src="/path/to/jquery-latest.js"></script> 
<script type="text/javascript" src="/path/to/jquery.tablesorter.js"></script>
```

Let’s make a simple table

```
<table id="myTable" class="tablesorter"> 
	<thead> 
		<tr> 
			<th>NO</th>
			<th>Name English</th> 
			<th>Name Persian</th> 
			<th>Surname</th> 
			<th>Province</th>  
		</tr> 
	</thead> 
	<tbody> 
		<tr> 
			<td>1</td> 
			<td>Jamshid</td> 
			<td>جمشید</td> 
			<td>Hashimi</td> 
			<td>Samangan</td> 
		</tr> 
		<tr> 
			<td>2</td> 
			<td>Omid</td> 
			<td>امید</td> 
			<td>Azizi</td> 
			<td>Balkh</td> 
		</tr> 
		<tr> 
			<td>3</td> 
			<td>Parwiz</td> 
			<td>پرویز</td> 
			<td>Nimati</td> 
			<td>Kabul</td> 
		</tr> 
		<tr> 
			<td>4</td> 
			<td>Khalid</td> 
			<td>خالد</td> 
			<td>Abidy</td> 
			<td>Jalal Abad</td> 
		</tr> 
	</tbody> 
</table>
```

When creating table to work with jQuery Tablesorter plugin, you need to use the <thead></thead> and <tbody></tbody> tags, otherwise it won’t work!

One more step to make our table columns to be sortable

```
$(document).ready(function() 
    { 
        $("#myTable").tablesorter(); 
    } 
);
```

it is done! Congratulations!

Now let’s look for other simple and useful features the plugin provide for us.

The initialization part, can be set to trigger a column by default when the page document is ready. For this, we can preset the NO column of our table

```
$(document).ready(function() 
    { 
        $("#myTable").tablesorter( {sortList: [[0,0]]} ); 
    } 
);
```

To change styles for different event trigger and table sort styles in general, we may go into some points.

The CSS style used to style the header in its unsorted state. You can modify this part if you want to have a different styled header. You can also set your custom header as well.

```
th.header
```

The CSS style used to style the header when sorting ascending

```
th.headerSortUp
```

The CSS style used to style the header when sorting descending

```
th.headerSortDown
```

These Up and Down styles are used when you click over a column and want to graphically show and icon or image or maybe some color change when this event is triggered.

One more thing, that is not mentioned in official documentation is that this plugin has full support for Arabic content (please test for Farsi special characters) in the fields. This was especially and important issue when I was using this plugin in one of my projects.

For more information, you can refer to official page of plugin here: [jQuery Tablesorter](http://tablesorter.com/docs/#Configuration "jQuery tablesorter plugin")

Please comment below if you need any support or didn’t understand some points.
