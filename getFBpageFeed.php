<?php 

$graph_url = "https://graph.facebook.com/name-of-public-fb-page/feed?access_token=YOUR_ACCESS_TOKEN";

$page_feed = file_get_contents($graph_url);
echo $page_feed;

/* OPTIONAL: Parse the JSON and get PHP associative array */
/*$page_feed_array = json_decode($page_feed, true);*/

?>


