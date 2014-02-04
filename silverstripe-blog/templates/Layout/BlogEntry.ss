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
		<% include BreadCrumbs %>
		
		<article class="blog-entry">
			<h1 class="blog-title">$Title</h1>
			<div id="blog-share-buttons">
				<div class="blog-share-button">
					<a href="https://twitter.com/share" class="twitter-share-button" data-width="200px" data-via="posty72">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
				</div>
				<div class="blog-share-button">
					<div class="fb-like" data-href="http://josh-post.com$Link" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="blog-share-button">
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
		</article>
		
		<% if IsOwner %>
			<p class="edit-post"><a href="$EditURL" id="editpost" title="<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>"><% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('BlogEntry_ss.UNPUBLISHTHIS', 'Unpublish this post') %></a></p>
		<% end_if %>

		$DisqusPageComments
	</div>
</section>
