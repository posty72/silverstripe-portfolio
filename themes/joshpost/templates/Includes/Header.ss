

<!DOCTYPE html>
<html lang="en-US">
<head>
<% base_tag %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
$MetaTags(false)
<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> :: $SiteConfig.Title</title>
<meta name="description" content="Josh Post is a web developer, web designer and part-time graphic designer based in Wellington. " />
<link rel="icon" href="$ThemeDir/images/icon.png" />

<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600' rel='stylesheet' type='text/css'>
<!-- Foundations -->
<link href="$ThemeDir/css/foundation.min.css" rel="stylesheet" type="text/css" />

<!-- Javascripts -->

<!-- Google Analytics -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-41975994-1', 'josh-post.com');
ga('send', 'pageview');

function trackOutboundLink(link, category, action) { 
 
try { 
_gaq.push(['_trackEvent', category , action]); 
} catch(err){}
 
setTimeout(function() {
document.location.href = link.href;
}, 100);
}
</script>

<!-- Google+ -->

<script type="text/javascript">
  (function() {
    var po = document.createElement("script"); po.type = "text/javascript"; po.async = true;
    po.src = "https://apis.google.com/js/plusone.js?publisherid=106675516942217187641";
    var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(po, s);
  })();
</script>

<!-- jQuery -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<!-- jQuery UI -->
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<!-- Homebaked -->
<script type="text/javascript" src="$ThemeDir/js/script.js"></script>




</head>
<body class="max-layout">


<header itemscope>
	<div class="container">
		<h2 itemprop="name"><a href="index.html">$SiteConfig.Title</a></h2>
		<p itemprop="title">Web Development / <strong class="red">New Zealand</strong></p>
		<div class="clear"></div>

		<% include Navigation %>

		<div class="contact-info row">
			<ul>
				<li class="large-4 small-12 columns"><span class="green">Phone:</span> +64 27 253 0285</li>
				<li class="large-4 small-12 columns"><span class="green">Email:</span> josh@josh-post.com</li>
				<li class="large-4 small-12 columns"><span class="green">Twitter:</span> <a class="grey" href="http://twitter.com/posty72">@posty72</a></li>
			</ul>
		</div>


		<ul id="externalLinks">
			<li><a id="LinkedInLink" href="http://nz.linkedin.com/in/joshpost"  onClick="trackOutboundLink(this, 'Outbound Links', 'nz.linkedin.com/in/joshpost'); return false;">LinkedIn</a></li>
			<li><a id="GooglePlusLink" href="https://plus.google.com/u/0/107365828336613471149?rel=author"  onClick="trackOutboundLink(this, 'Outbound Links', 'https://plus.google.com/u/0/107365828336613471149?rel=author'); return false;">Google+</a></li>
			<li><a id="TwitterLink" href="http://twitter.com/posty72"  onClick="trackOutboundLink(this, 'Outbound Links', 'http://twitter.com/posty72'); return false;">Twitter</a></li>
			<li><a id="GithubLink" href="http://github.com/posty72"  onClick="trackOutboundLink(this, 'Outbound Links', 'github.com/posty72'); return false;">Github</a></li>
		</ul>
		<div class="clear"></div>
	</div>
</header>