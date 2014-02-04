<section class="main" id="portfolio-page">
	<div class="container">
		<h1>$Title</h1>
		$Content

		<script id="prf-button" data-client="ABC" data-vacancy="XYZ" type="text/javascript" src="http://prefer.referral.local/prefer.php"></script>

		<% loop Websites %>
			<div class="website-scroll-to-link col left quarter pointer animate" data-link="$Title" style="background-image: url('$Image.URL');">
				<p>$Title</p>
			</div>
		<% end_loop %>

		<div class="clear show-scroll-top"></div>

		<% loop Websites %>
			<article class="website col left full" data-section="$Title" style="background-image: url($Image.URL);">

				<a class="website-div-link" href="$Link" target="_blank">Click to view the $Title website here</a>

				<h1 class="website-title"><a href="$Link">$Title</a></h1>

				<div class="website-info animate">

					<div class="website-description">$Content</div>

					<% if GithubLink %> 
						<p class="website-github"><a href="$GithubLink" target="_blank">View the source for this project on Github</a></p>
					<% end_if %>

					<% if Company %>
						<p class="website-company">Made for $Company</p>
					<% end_if %>

					<h5 class="website-link"><a href="$Link">View $Title here</a></h5>
				</div>

			</article>
		<% end_loop %>

		<div class="clear"></div>
		<div class="scroll-top pointer">Scroll to the top</div>

	</div>
</section>