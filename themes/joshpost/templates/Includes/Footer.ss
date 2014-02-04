
<footer>
	<div class="container">		
		<div class="footer-section col left quarter">
			<h6>Sitemap</h6>
			<ul>
				<% loop Menu(1) %>
				  	<li class="$LinkingMode animate"><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode animate">$MenuTitle.XML</a>
				<% end_loop %>
			</ul>
		</div>
		<div class="footer-section col left quarter">
			<h6>Connect</h6>
			<ul>
			<li><a class="animate" href="http://nz.linkedin.com/in/joshpost" target="_blank">LinkedIn</a></li>
			<li><a class="animate" href="http://gplus.to/joshpost" target="_blank">Google+</a></li>
			<li><a class="animate" href="http://twitter.com/posty72" target="_blank">Twitter</a></li>
			<li><a class="animate" href="http://github.com/posty72" target="_blank">Github</a></li>
			</ul>
		</div>
		<div class="footer-section contact-info col left quarter">
			<h6>Contact</h6>
			<ul>
				<li><span class="green">Phone:</span> +64 27 253 0285</li>
				<li><span class="green">Email:</span> josh@josh-post.com</li>
				<li><span class="green">Twitter:</span> @posty72</li>
			</ul>
		</div>
		<div class="clear"></div>

		<p class="footer-info">Josh Post Web Development and Design &bull; Wellington, New Zealand &bull; $Now.year</p>

	</div>
</footer>

</body>

</html>