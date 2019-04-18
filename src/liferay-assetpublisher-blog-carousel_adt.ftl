<style>
 .img-full-height {
     height: 100% !important;
 }
 
 .card-col-content {
 height: auto !important;
 min-height: 100px !important;
 }
 
 </style>
 
 <div class="row">
 	<div class="col-md-12">
	&nbsp;
  	</div>
 </div>
 
 <#if entries?has_content>
 <div class="row">
 	<div class="col-md-12">
 		<div class="owl-carousel owl-theme stage-margin" data-plugin-options='{"items": 6, "margin": 10, "loop": false, "nav": true, "dots": false, "stagePadding": 40}'>
 	<#list entries as curEntry>
         <#assign 
             assetRenderer = curEntry.getAssetRenderer() 
             blogEntry = assetRenderer.getAssetObject()/>
 		
 			<div class="card card-rounded" style="overflow: hidden;">
 				<div class="aspect-ratio-16-to-9-jf">
 					<img class="img-full-height-jf" alt="thumbnail" src="${blogEntry.getCoverImageURL(themeDisplay)}">
 				</div>
 
 				<div class="card-row card-row-padded card-row-valign-top">
 					<div class="card-col-content" style="height: 125px; text-align: center;">
 						<h6>Joe Bloggs</h6>
 						<a href="${assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, curEntry)}">${curEntry.getTitle(locale)}</a>
 					</div>
 				</div>
 			</div>
 	</#list>			
 
 		</div>
 	</div>
 </div>
 </#if>