---
title: "Introduction to Razor and Microsoft WebMatrix"
date: 2013-10-11T19:54:01
slug: introduction-to-razor-and-microsoft-webmatrix
categories: ["Programming General"]
tags: ["asp.net", "aspnet", "C#", "mvc", "razor", "razor create database", "razor syntax", "SQL server", "validation", "webmatrix", "webmatrix forms"]
aliases: ["/2013/10/11/introduction-to-razor-and-microsoft-webmatrix/"]
---

[![webmatrix-microsoft](/images/posts/introduction-to-razor-and-microsoft-webmatrix/webmatrix-microsoft.png)](/images/posts/introduction-to-razor-and-microsoft-webmatrix/webmatrix-microsoft.png)

WebMatrix is a great tool for making ASP.NET Web Pages. As we know, ASP.NET Web Pages is a straightforward page-based architecture different from existing ASP.NET technologies, such as Web Forms and ASP.NET MVC. Using the Web Pages approach, developers create their websites one page at a time, adding logic and behavior inline as needed.

**Installing WebMatrix**

If you do not have WebMatrix installed into your system, you can download it by navigating the Web Platform Installer’s website and look for the download link. Alternatively, you can download by browsing this link and download: [http://www.microsoft.com/web/webmatrix](http://www.microsoft.com/web/webmatrix "Microsoft WebMatrix")

So, you installed WebMatrix and now ready to go on? Let’s do it together.

**Your First WebMatrix Website**  
We are going to create an article manager application using WebMatrix & Razor. After opening WebMatrix, you will the start screen, asking you for 3 options. We will continue using the “New->Empty Site” as following:

[![Figure 1: New Empty Site Selection](/images/posts/introduction-to-razor-and-microsoft-webmatrix/1-Webmatrix-Open-Project.png "Figure 1: New Empty Site Selection")](/images/posts/introduction-to-razor-and-microsoft-webmatrix/1-Webmatrix-Open-Project.png)

Figure 1: New Empty Site Selection

After getting into the interface, you can right click the project name and rename the project. I will rename it to “ArticleManager”.

The project will have 3 pages inside: “Add Article” (Adding new article), “Article” (Showing the full detail of an article) and “Home page” for displaying the article summaries with their corresponding links to full articles.

**Create a Database**  
Articles need to be stored somewhere. We can easily create and include database to our projects in WebMatrix. On the left bottom of the interface, click “Databases” and you will see a new page, showing you a link for adding a new database into your project.

To add a database, click over “Add a database to your site” and a new database will be created on the left side navigation. As it expanded, you can write click over the “Tables” and create “New Table”.

After inserting fields and providing a table name, you can save (ctrl + s) the table.

[![Figure 2: WebMatrix Create Database](/images/posts/introduction-to-razor-and-microsoft-webmatrix/2-Webmatrix-Database.png "Figure 2: WebMatrix Create Database")](/images/posts/introduction-to-razor-and-microsoft-webmatrix/2-Webmatrix-Database.png)

Figure 2: WebMatrix Create Database

Now we need to create the “Add Article” page inside our site. To do this, create “Articles” folder in our site and then right click over and select New File. In the New File dialog, choose the CSHTML file type and name the file AddArticle.cshtml.

The page content displayed with this operation is a simple and small representation of a web page.

[![Figure 3: WebMatrix minimal web page](/images/posts/introduction-to-razor-and-microsoft-webmatrix/3-Webmatrix-Minimal-Web-Page-1024x609.png)](https://jamshidhashimi.com/wp-content/uploads/2013/10/3-Webmatrix-Minimal-Web-Page.png)

Figure 3: WebMatrix minimal web page

**Forms**

As you may already know, in order to get and save some information as an input, we generally use a form.

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <form method="post" action="">
        <fieldset>
            <legend>New Article</legend>
            <div>
                <label for="Title">Title</label>
                <input type="text" name="Title" />
            </div>
            <div>
                <label for="Summary">Summary</label>
                <input type="text" name="Summary" />
            </div>
            <div>
                <p><label for="Body">Body</label></p>
                <textarea cols="40" rows="10" name="Body">
                </textarea>
            </div>
            <div>
                <button type="submit">Add Article</button>
            </div>
        </fieldset>
    </form>
</body>
</html>
```

**Handling Posted Form Data**

We used the POST method to submit the page data. In this project, we submit it back to the page itself and will extract the data posted from request object to variables and will query an insert query to save it.

```
@{
    var title = Request["title"];
    var summary = Request["summary"];
    var body = Request["body"];
}
```

**Saving Data to Database**

After getting the posted data into variables and after checking that if they are really coming from a post request, we can start writing our SQL queries to insert these data into database.

[![Figure 4: Database Query](/images/posts/introduction-to-razor-and-microsoft-webmatrix/4-Webmatrix-Database-Query.png)](/images/posts/introduction-to-razor-and-microsoft-webmatrix/4-Webmatrix-Database-Query.png)

Figure 4: Database Query

**Validation**  
Validation is an important and vital part of form and data process in web platforms. Validation can be as simple as requiring that a form field not be empty, that the field be a certain type, or that a value fall within a particular range.  
In Razor, there are multiple helper functions which will help do validation in form operations. The AsBool(), AsDateTime(), AsDecimal(), AsFloat(), and AsInt() functions are used to convert the current data type to (AS) new type. Also there we have functions where we can check if they are in a certain condition. These functions are: IsBool(), IsDateTime(), IsDecimal(), IsFloat(), and IsInt().

We can use these helper functions in this project.

```
@{
    var title = Request["title"];
    var summary = Request["summary"];
    var body = Request["body"];
    var record_date = DateTime.Now;

    if(IsPost)
    {
        if(title.IsEmpty()){
            ModelState.AddError("Title", "Post title can't be empty");
        }

        if(summary.IsEmpty()){
            ModelState.AddError("Summary", "You can't put the article summary empty");
        }

        if(body.IsEmpty()){
            ModelState.AddError("Body","Please write something in the body part");
        }
    }
}

@if (IsPost && ModelState.IsValid)
{
    Database
            .Open("ArticleManager")
            .Execute("INSERT INTO articles (title, summary, body, record_date) " + 
                "VALUES(@0,@1,@2,@3)", 
                title, summary, body, record_date);
<fieldset>
    <legend>Posted Values: </legend>
    <p>
    <label>Title: </label>
    <span>@title</span>
    </p>
    <p>
    <label>Summary: </label>
    <span>@summary</span>
    </p>
    <p><label>Body: </label></p>
    <p><div>@body</div></p>
</fieldset>
}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <form method="post" action="">
        <fieldset>
            <legend>New Article</legend>
            @Html.ValidationSummary()
            <div>
                @Html.ValidationMessage("Title", "*")
                <label for="Title">Title</label>
                <input type="text" name="Title" />
            </div>
            <div>
                @Html.ValidationMessage("Summary", "*")
                <label for="Summary">Summary</label>
                <input type="text" name="Summary" />
            </div>
            <div>
                @Html.ValidationMessage("Body", "*")
                <p><label for="Body">Body</label></p>
                <textarea cols="40" rows="10" name="Body">
                </textarea>
            </div>
            <div>
                <button type="submit">Add Article</button>
            </div>
        </fieldset>
    </form>
</body>
</html>
```

When any validation checks returned true, we can set the error with a message into the ModelSate object. If no errors occurred, the ModelState.IsValid property will reflect this by returning false.

The whole reason for using validation is to save the correct data into database. In other words, only save the posted data which are valid.

To show a summary of validation errors we previously added to ModelState object, we used @Html.ValidationSummary() method.

The output for @Html.ValidationSummary() is:

```
<div class="validation-summary-errors">
	<ul>
		<li>Post title can't be empty</li>
		<li>You can't put the article summary empty</li>
		<li>Please write something in the body part</li>
	</ul>
</div>
```

As you can see, the method generated contains validation-summary-errors class which we can use to define styles and output the errors in different colors and designs.

The @Html.ValidationMessage() can be applied to any field that might failed validation. The helper checks the ModelState object to see if there is any registered error for the field mentioned in the first parameter of the method in case of any fail condition. If so, then the error will be outputted. We can also override the message to a custom message by adding a second parameter to @Html.ValidationMessage() method.

In this article we learnt about WebMatrix, How to install, Creating our very first website in WebMatrix and Razor, Creating a database, Forms, Handling posted data from Forms and Validations. In the next article we will look out to make a good looking website using layouts in Razor.
