<jsp:include page="/WEB-INF/templates/includes/header.jsp">
	<jsp:param value="Home" name="pageName"/>
</jsp:include>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h1 class="display-4">Book Project</h1>
		    	<p class="lead">This is a sample Java web-app with embedded tomcat to be used to deployed using DevOps tools.</p>
		    	<a type="button" class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/books" alt="Books">Books</a>
		  	</div>
		</div>		
<%@ include file="/WEB-INF/templates/includes/footer.jsp"%>