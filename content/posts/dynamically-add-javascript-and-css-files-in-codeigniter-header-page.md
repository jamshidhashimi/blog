---
title: "Dynamically Add Javascript and CSS Files in CodeIgniter Header Page"
date: 2013-04-12T09:35:18
slug: dynamically-add-javascript-and-css-files-in-codeigniter-header-page
categories: ["Javascript", "PHP"]
tags: ["codeigniter", "css", "dynamic load of files", "load css", "load javascript", "php"]
aliases: ["/2013/04/12/dynamically-add-javascript-and-css-files-in-codeigniter-header-page/"]
---

Those who are developing web projects know that, header pages are always the constant file of their template folder. The classic way of using a header page in small projects are to fill it with constant JavaScript and CSS files along with html tags and use it in inside functions where you need. The problem arise when you start to develop a bigger project where you need to use different JavaScript and CSS files. The bad practice is to load all needed files in the header page, that will also start to appear and load in the pages and sections which we do not need them. This will make the page load slow and will cause conflicts and usage problems.

The solution to this problem is to dynamically load the CSS and JavaScript files in the pages we need them and make our page load faster by reducing the included files according to our exact need.

To implement this in CodeIgniter, firstly set the default CSS and JavaScript files in config.php

```
$config['header_css'] = array('style.css','prettyPhoto.css','nivo-slider.css');
$config['header_js']  = array('core.js','core.js',
                              'jquery-1.4.1.min.js',
                              'jquery-slidedeck.pack.lite.js',
                              'jquery-prettyPhoto.js',
                              'jquery.nivo.slider.js');
```

then, add this helper functions I wrote, to your template helper (or any other helper files you use)

```
//Dynamically add Javascript files to header page
if(!function_exists('add_js')){
    function add_js($file='')
    {
        $str = '';
        $ci = &get_instance();
        $header_js  = $ci->config->item('header_js');

        if(empty($file)){
            return;
        }

        if(is_array($file)){
            if(!is_array($file) && count($file) <= 0){
                return;
            }
            foreach($file AS $item){
                $header_js[] = $item;
            }
            $ci->config->set_item('header_js',$header_js);
        }else{
            $str = $file;
            $header_js[] = $str;
            $ci->config->set_item('header_js',$header_js);
        }
    }
}

//Dynamically add CSS files to header page
if(!function_exists('add_css')){
    function add_css($file='')
    {
        $str = '';
        $ci = &get_instance();
        $header_css = $ci->config->item('header_css');

        if(empty($file)){
            return;
        }

        if(is_array($file)){
            if(!is_array($file) && count($file) <= 0){
                return;
            }
            foreach($file AS $item){   
                $header_css[] = $item;
            }
            $ci->config->set_item('header_css',$header_css);
        }else{
            $str = $file;
            $header_css[] = $str;
            $ci->config->set_item('header_css',$header_css);
        }
    }
}

if(!function_exists('put_headers')){
    function put_headers()
    {
        $str = '';
        $ci = &get_instance();
        $header_css = $ci->config->item('header_css');
        $header_js  = $ci->config->item('header_js');

        foreach($header_css AS $item){
            $str .= '<link rel="stylesheet" href="'.base_url().'css/'.$item.'" type="text/css" />'."\n";
        }

        foreach($header_js AS $item){
            $str .= '<script type="text/javascript" src="'.base_url().'js/'.$item.'"></script>'."\n";
        }

        return $str;
    }
}
```

Now, you can manually add CSS and JavaScript files as below:

```
add_css(array('jamshid.css','hashimi.css'));
add_js('jamshid.js');
```

lastly, you can use the put\_headers function to load your CSS and JavaScript files in to your header page.

You can easily extend this helper function to minify your CSS and JavaScript files and pass parameters for further use.

Update: here is the code in [Github](https://github.com/hashimi/dynamic-headers).
