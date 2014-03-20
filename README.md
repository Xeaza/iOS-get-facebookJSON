iOS & php request
====================

to gather JSON data from public Facebook feed
--------------------

The file [getFBpageFeed.php](https://github.com/Xeaza/iOS-get-facebookJSON/blob/master/getFBpageFeed.php) makes a request to Facebook Graph to get the JSON data of a public Facebook page. Then it ECHO's it back (in this case to a method in getFacebookPosts.m).

[getFacebookPosts.m](https://github.com/Xeaza/iOS-get-facebookJSON/blob/master/getFacebookPosts.m) has two methods, one that makes the call to the above .php file and another that writes and could parse the returned JSON data to a file.

* To get an app token you can read more about that [here.](https://developers.facebook.com/docs/facebook-login/access-tokens)
* More about Facebook's SDK for PHP [here.](https://developers.facebook.com/docs/reference/php/)
* Use Facebook's [Graph API Explorer](https://developers.facebook.com/tools/explorer) to get a good idea of the data being returned so you can parse it easliy later on.