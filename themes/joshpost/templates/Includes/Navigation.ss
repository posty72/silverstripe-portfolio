<nav>
	<div class="row">
		<ul id="navLinks">
			<% loop Menu(1) %>
			  	<li class="$LinkingMode large-3 small-6 columns"><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode animate">$MenuTitle.XML</a>
			<% end_loop %>
			<li class="clear"></div>
		</ul>
	</div>
</nav>