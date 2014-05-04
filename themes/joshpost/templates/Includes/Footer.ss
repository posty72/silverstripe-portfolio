
<footer>
	<div class="container row">		
		<div class="footer-section large-4 small-6 columns">
			<h6>Sitemap</h6>
			<ul class="row">
				<% loop Menu(1) %>
				  	<li class="$LinkingMode large-12 small-12 columns animate"><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode animate">$MenuTitle.XML</a>
				<% end_loop %>
			</ul>
		</div>
		<div class="footer-section large-4 small-6 columns">
			<h6>Connect</h6>
			<ul class="row">
				<li class="large-12 small-12 columns"><a class="animate" href="http://nz.linkedin.com/in/joshpost" target="_blank">LinkedIn</a></li>
				<li class="large-12 small-12 columns"><a class="animate" href="http://gplus.to/joshpost" target="_blank">Google+</a></li>
				<li class="large-12 small-12 columns"><a class="animate" href="http://twitter.com/posty72" target="_blank">Twitter</a></li>
				<li class="large-12 small-12 columns"><a class="animate" href="http://github.com/posty72" target="_blank">Github</a></li>
			</ul>
		</div>
		<div class="footer-section contact-info large-4 small-12 columns">
			<h6>Contact</h6>
			<ul class="row">
				<li class="large-12 small-12 columns"><span class="green">Phone:</span> +64 27 253 0285</li>
				<li class="large-12 small-12 columns"><span class="green">Email:</span> josh@josh-post.com</li>
				<li class="large-12 small-12 columns"><span class="green">Twitter:</span> @posty72</li>
			</ul>
		</div>
		<div class="clear"></div>

		<p class="footer-info">Josh Post Web Development and Design &bull; New Zealand &bull; Built with Silverstripe &bull; $Now.year</p>

	</div>
</footer>

</body>

</html>