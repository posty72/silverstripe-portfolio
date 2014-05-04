<section class="main" id="portfolio-page">
	<div class="container">

		<div class="row white-bg">
			<h1>$Title</h1>
			$Content
			<% loop Websites %>
				<div class="website-scroll-to-link large-3 small-6 columns pointer animate" data-link="$Title">
					<p>$Title</p>
					$Image
				</div>
			<% end_loop %>
		</div>

		<div class="clear show-scroll-top"></div>

		<div class="row">
			<% loop Websites %>
				<article class="website large-12 small-12 columns" data-section="$Title">

					<h1 class="website-title"><a href="$Link">$Title</a></h1>

					$Image

					<div class="website-info animate">

						$Content

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
		</div>

		<div class="clear"></div>
		<div class="scroll-top pointer">Scroll to the top</div>

	</div>
</section>