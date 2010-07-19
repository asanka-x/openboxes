<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="custom" />
        <title>${message(code: 'default.chooseWarehouse.label', default: 'Choose a warehouse')}</title>
		<!-- Specify content to overload like global navigation links, page titles, etc. -->
		<content tag="menuTitle">${message(code: 'default.chooseWarehouse.label', default: 'Choose a warehouse')}</content>		
		<content tag="pageTitle">${message(code: 'default.chooseWarehouse.label', default: 'Choose a warehouse')}</content>
		<content tag="globalLinksMode">append</content>
		<content tag="localLinksMode">override</content>
		<content tag="globalLinks"><g:render template="global"/></content>
		<content tag="localLinks"><g:render template="local"/></content>
    </head>
    <body>        
		<div class="body">		

	    	<div id="chooseWarehouse">				

				<g:if test="${!session.user}">
					<p>Welcome! Please <a class="home" href="${createLink(uri: '/auth/login')}">login</a> to gain access</p>
				</g:if>
				<g:else>
					<g:if test="${flash.message}">
					    <div class="message">${flash.message}</div>
					</g:if>		


					
					<table class="withoutBorder menu">
						<tbody>
							<tr>
								<td>
									<g:if test="${session?.user?.warehouse}">
										<span style="width: 100%; text-align: right; color: #aaa">(Last login: <b>${session?.user?.lastLoginDate}</b> into <b>${session?.user?.warehouse}</b>)</span>
									</g:if>
								</td>
							</tr>
							<g:each var="warehouse" in="${org.pih.warehouse.inventory.Warehouse.list()}">								
								<tr>
									<td>
										<a class="home" href='${createLink(action:"chooseWarehouse", id: warehouse.id)}'>
											<div style="padding: 15px; background-color: #F8F7EF; display: block;">
												<g:if test="${warehouse.logoUrl}"><img src="${warehouse.logoUrl}" width="24" height="24" style="vertical-align: middle"></img></g:if>
												${warehouse.name} 												
											</div>
										</a> &nbsp;
									</td>
								</tr>
							</g:each>							
						</tbody>					
					</table>
					


				</g:else>
	    	</div>
		</div>
    </body>
</html>
