<style>
#river .article-wrapper {
    min-height: 140px;
}
#river article {
    border-bottom: 1px solid #b1b3b5;
    margin-bottom: 20px;
}
article {
    display: block;
}
#river .article-wrapper .article-media-thumbnail {
    max-width: 280px;
    float: left;
    margin: 0 20px 20px 0;
    overflow: hidden;
    position: absolute;
}
#river .article-wrapper .article-media-thumbnail a img {
    height: 120px !important;
}
img {
    vertical-align: middle;
    border: 0;
}
#river .article-wrapper .article-header {
    margin-left: 290px;
    margin-bottom: 20px;
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block;
}
#river .article-wrapper .article-header .article-title {
    line-height: 42px !important;
    letter-spacing: 0px;
    margin: 0 0 0px 0 !important;
}
h2, .h2 {
    font-size: 30px;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: inherit;
    font-weight: 500 !important;
    line-height: 1.1;
    color: inherit;
}
#river .article-wrapper .article-header .article-title a {
    color: #231f20;
    font-size: 24px;
    font-style: normal;
    vertical-align: top;
    line-height: 1;
}
#river .article-wrapper .article-header .article-byline {
    text-transform: uppercase;
    font-size: 12px;
}
#river .article-wrapper .article-header .article-byline .the-time {
    color: #808284;
    white-space: nowrap;
    padding-left: 20px;
}
</style>

<#if entries?has_content>
<div id="river" class="story-river" role="main">
	<#list entries as curEntry>
        <#assign 
            assetRenderer = curEntry.getAssetRenderer() 
            blogEntry = assetRenderer.getAssetObject()
        />
		<article class="article-wrapper">
		    <div class="article-media-thumbnail">
		    <a href="${assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, curEntry)}">
		    <img src="${blogEntry.getCoverImageURL(themeDisplay)}">
		    </a>
		    </div>
		    <header class="article-header">
		        <h2 class="article-title">
		        <a href="${assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, curEntry)}">
		        ${curEntry.getTitle(locale)}
		        </a>
		        </h2>      
		        <div class="article-byline">
				<a href="#" class="author url fn">${assetRenderer.getUserName()}</a>				<time class="the-time">${assetRenderer.getDisplayDate()?date?string.long}</time>
		        </div>
		    </header>
		</article>
	</#list>
</div>	
</#if>