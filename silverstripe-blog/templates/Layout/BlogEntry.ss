<% include BlogSideBar %>
<section id="BlogContent" class="main">
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<div class="container">
		<!--<% include BreadCrumbs %>-->
		
		<article class="blog-entry row white-bg">
			<h1 class="blog-title">$Title</h1>
			<div id="blog-share-buttons">
				<div class="blog-share-button large-4 small-12">
					<a href="https://twitter.com/share" class="twitter-share-button" data-width="200px" data-via="posty72">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
				</div>
				<div class="blog-share-button large-4 small-12">
					<div class="fb-like" data-href="http://josh-post.com$Link" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="blog-share-button large-4 small-12">
					<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script><div class="g-plusone" data-size="medium"></div>
				</div>
			</div>
			<p class="blog-date"><% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> <span class="green">$Author.XML</span> <% _t('BlogEntry_ss.POSTEDON', 'on') %> <span class="green">$Date.Long</span></p>

					
			$Content
			<% if TagsCollection %>
				<p class="tag-start"><% _t('BlogEntry_ss.TAGS', 'Tags:') %> </p>
				<p class="tags">
					<% loop TagsCollection %>
						<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %><% end_if %>
					<% end_loop %>
				</p>
			<% end_if %>

			<div id="disqus_thread"></div>
		    <script type="text/javascript">
		        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
		        var disqus_shortname = 'josh-post'; // required: replace example with your forum shortname
		        var disqus_identifier = '$Title';
		        var disqus_title = '$Title';
		        var disqus_url = 'http://josh-post.com$Link';

		        /* * * DON'T EDIT BELOW THIS LINE * * */
		        (function() {
		            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
		        })();
		    </script>
		    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
		</article>
		
		<% if IsOwner %>
			<p class="edit-post"><a href="$EditURL" id="editpost" title="<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>"><% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('BlogEntry_ss.UNPUBLISHTHIS', 'Unpublish this post') %></a></p>
		<% end_if %>
    
	</div>
</section>
