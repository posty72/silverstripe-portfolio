<article class="blog-summary">
	<p class="blog-tree-title"><a href="$Parent.Link">$Parent.Title</a></Parent></p>
	<h2 class="post-title red-under"><a class="black" href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<!--<p class="author-date"><% _t('BlogSummary_ss.POSTEDBY', 'Posted by') %> <span class="green">$Author.XML</span> <% _t('BlogSummary_ss.POSTEDON', 'on') %> $Date.Long | <a href="$Link#PageComments_holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a></p>-->
	<!--<% if TagsCollection %>
		<p class="tags">
			<% _t('BlogSummary_ss.TAGS','Tags') %>:
			<% loop TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
			<% end_loop %>
		</p>
	<% end_if %>-->

	<% if BlogHolder.ShowFullEntry %>
		$Content
	<% else %>
		<p>$Content.FirstParagraph(html)</p>
	<% end_if %>
	
	<div class="blog-vitals">
		<!--<a href="$Link#PageComments_holder" class="comments" title="View Comments for this post">
			$Comments.Count <% _t('BlogSummary_ss.SUMMARYCOMMENTS','comment(s)') %>
		</a> 
		| -->
		<h6 class="readmore"><a href="$Link" title="Read Full Article">Read more...</a></h6>
	</div>
	<div class="clear"></div>
</article>
