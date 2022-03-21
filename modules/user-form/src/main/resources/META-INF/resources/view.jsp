<%@ include file="/init.jsp" %>
<aui:script>
	/*You can comment these javascript lines*/
	Liferay.on(
		'allPortletsReady',
	
		/*
		This function gets loaded when everything, including the portlets, is on
		the page.
		*/
	
		function(){
		   alert('all portlets are ready');
		}
	
	);
	
	AUI().ready(
	  function(){
	  	alert('Page is ready')
	  }
	);
</aui:script>

<script type="text/javascript" language="javascript">  
	$(document).ready(function() {  
	  alert('Jquery is ready');
	});  
</script>
<p>
  <!-- Bootstrap and Jquery is used as a base framework in Clay, so Clay 
	   is an extension of Bootstrap. In other words, Clay provides existing
	   CSS classes from Bootstrap as well as new CSS classes, all of them 
	   built to be Lexicon compliant (Design Guideline).
	   https://liferay.design/lexicon/
	   https://clayui.com/
	   http://www.liferaysavvy.com/2020/03/liferay-clay-form-elements-tag-libraries.html
	   https://liferay.dev/blogs/-/blogs/theming-in-liferay-7-2
	-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="#">User Crud</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" 
	  		  data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
	  		  aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Add<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Show</a>
	      </li>
	  </div>
  </nav>
  	
	<portlet:actionURL name="addUser" var="addUser"></portlet:actionURL>
	<liferay-ui:success key="success" message="User saved successfully!"/>
	<liferay-ui:error key="error" message="Sorry, this User Id Card is already in database" />
	
    <div style="position:relative; margin: 30px 0 0 0;">
		<aui:form action="<%= addUser %>" id="frmUser" name="<portlet:namespace />fm">	
		        <aui:fieldset>		
		            <aui:input name="userName" type="text" label="Name" required="true" style="background: white" >
		            	<aui:validator name="maxLength">20</aui:validator>
		            </aui:input>
			    	<aui:input name="userSurname" type="text" label="Surname" required="true" style="background: white">
			    		<aui:validator name="maxLength">20</aui:validator>
		            </aui:input>
			    	<aui:input name="address" type="text" label="Address" required="true" style="background: white">
			    		<aui:validator name="maxLength">20</aui:validator>
		            </aui:input>
			    	<aui:input name="userIdCard" type="text" label="UserIdCard" required="true" style="background: white">
			    		<aui:validator name="maxLength">20</aui:validator>
		            </aui:input>
		
		        </aui:fieldset>
		
		        <aui:button-row>
		            <aui:button type="submit"></aui:button>
		            <aui:button type="reset" value="clear"/>
		        </aui:button-row>
		</aui:form>
	</div>
</p>