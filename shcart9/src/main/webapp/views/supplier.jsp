<%@include file="/includes/Head.jsp" %>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>   </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="products">Products</a></li>
        <li><a href="categories">categories</a></li>
        <li class="active"><a href="suppliers">suppliers</a></li>
      </ul>
     
    </div>
  </div>
</nav>	
<h1 align="center">Add a Supplier</h1>

	<c:url var="addAction" value="/supplier/add"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table align="center" class="table table-striped table-hover">
			<tr>
				<td align="center"><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" class="form-control" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" class="form-control" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td align="center"><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name"  class="form-control" required="true" /></td>
			</tr>
			<tr>
				<td align="center"><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:input path="address" class="form-control" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><c:if test="${!empty supplier.name}">
						<input type="submit" class="btn btn-primary"
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Supplier"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3 align="center">Supplier List</h3>
	<c:if test="${!empty supplierList}">
		<table class="table table-striped table-hover" align="center">
			<tr>
				<th width="80">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="120">Supplier Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
<%@include file="/includes/Fotter.jsp"%>
