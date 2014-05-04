<% include BreadCrumbs %>

<section id="BlogContent" class="blogcontent typography">
	<div class="container row">
	
	<% if SelectedDate %>
		<h3><% _t('BlogTree_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
	<% else_if SelectedAuthor %>
		<h3><% _t('BlogTree_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
	<% end_if %>
	
	<% if BlogEntries %>
		<% loop BlogEntries %>
			<div class="large-12 small-12 columns">
				<% include BlogSummary %>
			</div>
		<% end_loop %>
	<% else %>
		<h2><% _t('BlogTree_ss.NOENTRIES', 'There are no blog entries') %></h2>
	<% end_if %>
	
	<% include BlogPagination %>
	
	</div>
</section>