Simple iOS->php request to gather JSON data from public Facebook feed
====================

Basic Objective-C and PHP needed to get JSON data from a public Facebook page.

The file [https://github.com/Xeaza/iOS-get-facebookJSON/blob/master/getFBpageFeed.php](getFBpageFeed.php) makes a request to Facebook Graph to get the JSON data of a public Facebook page. Then it ECHO's it back (in this case to a method in getFacebookPosts.m).

[https://github.com/Xeaza/iOS-get-facebookJSON/blob/master/getFacebookPosts.m](getFacebookPosts.m) has two methods, one that makes the call to the above .php file and another that writes and could parse the returned JSON data to a file.

• To get an app token you can read more about that [https://developers.facebook.com/docs/facebook-login/access-tokens](here.)
• More about Facebook's SDK for PHP [https://developers.facebook.com/docs/reference/php/](here.)
• Use Facebook's [https://developers.facebook.com/tools/explorer](Graph API Explorer) to get a good idea of the data being returned so you can parse it easliy later on.