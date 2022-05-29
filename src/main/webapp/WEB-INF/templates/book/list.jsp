<%@ include file="/WEB-INF/templates/includes/header.jsp"%>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
		    	<h1 class="display-4">Book Project</h1>
		    	<p class="lead">This is a sample Java web-app with embedded tomcat to be used to deployed using DevOps tools.</p>
		  	</div>
		</div>	
		<main>
			<div class="container">
				<div class="row">
					<div class="col">
						<table class="table table-hover">
							<thead>
							    <tr>
							    	<th scope="col">ID</th>
							      	<th scope="col">Title</th>
							      	<th scope="col">Action</th>
							    </tr>
							</thead>
						  	<tbody>
						  		<c:forEach var="book" items="${books}">
							    <tr>
							      	<th scope="row">${book.id}</th>
							      	<td>${book.title}</td>
							      	<td>
							      		<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn btn-info" data-toggle="modal" data-target="#bookModal" data-book-action="viewBook" data-book-id="${book.id}">View</button>
										</div>
							      	</td>
							    </tr>
							    </c:forEach>
						  	</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>	
		<%@ include file="/WEB-INF/templates/components/bookModal.jsp"%>		
		<%@ include file="/WEB-INF/templates/components/viewBookTable.jsp"%>
<%@ include file="/WEB-INF/templates/includes/footer.jsp"%>