---
title: "Image upload with Codeigniter"
date: 2011-06-14T08:48:27
slug: image-upload-with-codeigniter-2
categories: ["PHP"]
tags: ["codeigniter example", "codeigniter image upload", "image upload php", "image uploiad script php"]
aliases: ["/2011/06/14/image-upload-with-codeigniter-2/"]
---

1) Create upload.php file inside controller, copy and past the following code into. Also create an ‘uploads’ folder inside the codeigniter root folder.

```
<?php

//Author: Jamshid HASHIMI

  class Upload extends CI_Controller

  {

    function __construct()

    {

        parent::__construct();

        $this->load->helper('form');

        $this->load->helper('url');

    }  

    function index()

    {

        $this->load->view('upload_view');

    }

    //Upload Image function

    function uploadImage()

    {

       $config['upload_path']   =   "uploads/";

       $config['allowed_types'] =   "gif|jpg|jpeg|png"; 

       $config['max_size']      =   "5000";

       $config['max_width']     =   "1907";

       $config['max_height']    =   "1280";

       $this->load->library('upload',$config);

       if(!$this->upload->do_upload())

       {

           echo $this->upload->display_errors();

       }

       else

       {

           $finfo=$this->upload->data();

           $this->_createThumbnail($finfo['file_name']);

           $data['uploadInfo'] = $finfo;

           $data['thumbnail_name'] = $finfo['raw_name']. '_thumb' .$finfo['file_ext']; 

           $this->load->view('upload_success',$data);

           // You can view content of the $finfo with the code block below

           /*echo '<pre>';

           print_r($finfo);

           echo '</pre>';*/

       }

    }

    //Create Thumbnail function

    function _createThumbnail($filename)

    {

        $config['image_library']    = "gd2";      

        $config['source_image']     = "uploads/" .$filename;      

        $config['create_thumb']     = TRUE;      

        $config['maintain_ratio']   = TRUE;      

        $config['width'] = "80";      

        $config['height'] = "80";

        $this->load->library('image_lib',$config);

        if(!$this->image_lib->resize())

        {

            echo $this->image_lib->display_errors();

        }      

    }

  }

?>
```

2) Create the upload\_view and upload\_success files inside view folder and insert the below codes into  
upload\_view

```
<html>

<head>

<title> Image Upload </title>

</head>

<body>

<div id="container">

<?php echo  form_open_multipart('upload/uploadImage')?>

<input type="file" name="userfile" />

<p><input type="submit" name="submit" value="submit" /></p>

<?php echo form_close();?>

</div>

</body>

</html>
```

Upload Success

```
<html>

<head>

<title> Image Upload </title>

</head>

<body>

<div id="container">

<dl>

    <dt>

        File Name:

    </dt>

    <dd>

        <?php echo $uploadInfo['file_name'];?>

    </dd>

    <dt>

        File Size:

    </dt>

    <dd>

        <?php echo $uploadInfo['file_size'];?>

    </dd>

    <dt>

        File Extension:

    </dt>

    <dd>

        <?php echo $uploadInfo['file_ext'];?>

    </dd>

    <br />

    <p>The Image:</p>

    <img alt="Your uploaded image" src="<?=base_url(). 'uploads/' . $uploadInfo['file_name'];?>"> 

    <p>The Image:</p> 

    <img alt="Your Thumbnail image" src="<?=base_url(). 'uploads/' . $thumbnail_name;?>">  

</dl>

</div>

</body>

</html>
```

If you have any question regarding the codes above, you can ask as a comment. I will be here to answer your questions
