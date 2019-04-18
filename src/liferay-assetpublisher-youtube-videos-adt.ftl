<div class="row">
 	<div class="col-md-12">
	&nbsp;
  	</div>
 </div>
 
 <#if entries?has_content>

	<#assign count = 0>
	
 	
	<#list entries as curEntry>
        <#assign 
            assetRenderer = curEntry.getAssetRenderer() 
            webContentEntry = assetRenderer.getAssetObject()
            document = saxReaderUtil.read(webContentEntry.getContent())
            rootElement = document.getRootElement()
			videoID = "gQaXbSPQoDQ"
        />
		<#assign new_row = count % 2>		
		<#assign count = count + 1>
		
		<#if new_row == 0>
		 <div class="row">
			<div class="col-md-12" style="height: 50px;">
			&nbsp;
			</div>
		 </div>
		 <div class="row">
		 </#if>
		 
 	    <#list rootElement.elements() as curElement>
 	        <#if curElement.attributeValue("name") == "VideoID">
 	            <#assign videoID = curElement.element("dynamic-content").getText()/>
 	        </#if>            

 	    </#list>		 
		 
			<div class="col-md-6">
				<h2>${curEntry.getTitle(locale)}</h2>
				<div class="embed-responsive embed-responsive-16by9 mb-none">
					<iframe frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/${videoID}?showinfo=0&amp;wmode=opaque"></iframe>
				</div>
				<#if new_row != 0>
				</div>	
					</div>
				 </#if>				
		<#if new_row == 0>
		</div>		
 		 </#if>	    
 	</#list>
 </#if>