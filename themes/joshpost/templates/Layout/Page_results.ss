<section id="searchResults" class="main">
    <div class="container">
        <div class="row white-bg">
            <h1>$Title</h1>
        </div>
        <div class="row white-bg">
            <% if $Query %>
                <p class="searchQuery"><strong>You searched for &quot;{$Query}&quot;</strong></p>
            <% end_if %>
                  
            <% if $Results %>
                <ul id="SearchResults">
                    <% loop $Results %>
                    <li class="large-12 small-12 columns">
                        <h2 class="post-title red-under">
                            <a class="searchResultHeader" href="$Link">
                                <% if $MenuTitle %>
                                $MenuTitle
                                <% else %>
                                $Title
                                <% end_if %>
                            </a>
                        </h2>
                        <p>$Content.LimitWordCountXML</p>
                        <h6 class="recessed-title">
                            <a class="readmore" href="$Link"
                            title="Read more about &quot;{$Title}&quot;"
                            >Read more</a>
                        </h6>
                    </li>
                    <% end_loop %>
                </ul>
            <% else %>
                <div class="large-12 small-12 columns">
                    <h3>Sorry, your search query did not return any results.</h3>
                </div>
            <% end_if %>
        </div>
                  
        <% if $Results.MoreThanOnePage %>
            <div id="PageNumbers">
                <% if $Results.NotLastPage %>
                <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
                <% end_if %>
                <% if $Results.NotFirstPage %>
                <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
                <% end_if %>
                <span>
                    <% loop $Results.Pages %>
                        <% if $CurrentBool %>
                        $PageNum
                        <% else %>
                        <a href="$Link" title="View page number $PageNum">$PageNum</a>
                        <% end_if %>
                    <% end_loop %>
                </span>
                <p>Page $Results.CurrentPage of $Results.TotalPages</p>
            </div>
        <% end_if %>
    </div>
</section>