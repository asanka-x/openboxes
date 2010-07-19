<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="custom" />
	<title>Warehouse &gt; Login</title>
	<!-- Specify content to overload like global navigation links, page titles, etc. -->
	<content tag="pageTitle">Login</content>
	<content tag="menuTitle">Login</content>		
	<content tag="globalLinksMode">append</content>
	<content tag="localLinksMode">override</content>
	<content tag="globalLinks"><g:render template="global" model="[entityName:entityName]"/></content>
	<content tag="localLinks"><g:render template="local" model="[entityName:entityName]"/></content>       
	<content tag="breadcrumb"><g:render template="breadcrumb" model="[pageTitle:pageTitle]"/></content>
</head>
<body>
	<div class="body">


		<g:form controller="auth" action="doLogin" method="post">		  
		    <div class="dialog">
				<g:if test="${flash.message}">
				    <div class="message">${flash.message}</div>
				</g:if>		
				<div id="loginForm">
		
					<g:hasErrors bean="${userInstance}">
			           <div class="errors">
			               <g:renderErrors bean="${userInstance}" as="list" />
			           </div>
			        </g:hasErrors>		
		
					<div class="notice">
						Login as <b>manager</b> : <b>password</b> to use the system as a <b>Warehouse Manager</b>. 
					</div>			
		
					<fieldset> 			
				
						<script>	
							jQuery(document).ready(function() {
								// focus on the first text input field in the first field on the page
								jQuery("select:first", document.forms[0]).focus();
							});	
						</script>		
					
						<div  style="padding: 15px;">
							    
							<div class="prop">
								<label for="username">Username or email:</label><br/>
								<input type="text" class="large" name="username" id="username" size="40" value="${userInstance?.username}">
							</div> 
							<div  class="prop">
								<label for="password">Password:</label><br/>
								<input type="password" class="large" name="password" id="password" size="40" value="${userInstance?.password}">
								
													
							</div>	
							
		<%-- 					
							<hr style="margin-bottom: 1.4em; margin-top: 1.4em"/>
							<div class="prop">
								<!-- <label for="warehouse.id">Log into:</label><br/> -->
							    <g:select class="large" name="warehouse.id" from="${org.pih.warehouse.inventory.Warehouse.list()}" 
							    	optionKey="id" value=""
							    	noSelection="[null: 'Choose warehouse to manage']"/>				    	
		--%>					    	
								<span class="buttons" >
									<button type="submit" class="positive"><img src="${createLinkTo(dir:'images/icons/silk',file:'tick.png')}" alt=""/> Login</button>					   
								</span>
							</div>  					
						</div>
					</div>
				</fieldset> 
			</div>
			
			<%-- 
		    <div class="buttons">
				<span class="button">
					<g:submitButton name="login" class="save" value="${message(code: 'default.button.login.label', default: 'Login')}" />
				</span>	
		    </div>
		    --%>	
			<br/>
		</g:form>
		

	</div>
</body>
</html>