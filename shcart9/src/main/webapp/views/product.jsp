<%@include file="/includes/Head.jsp"%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="products">Products</a></li>
				<li><a href="categories">categories</a></li>
				<li><a href="suppliers">suppliers</a></li>
				</ul>
				</div>
	</div>
</nav>

<h1 align="center">Add a Product</h1>

<c:url var="addAction" value="/product/add"></c:url>

<form:form action="${addAction}" commandName="product">
	<table align="center" class="table table-striped table-hover">
		<tr>
			<td align="center"><form:label path="id">
					<spring:message text="ID" />
				</form:label></td>
			<c:choose>
				<c:when test="${!empty product.id}">
					<td><form:input path="id" disabled="true" class="form-control" readonly="true" />
					</td>
				</c:when>

				<c:otherwise>
					<td><form:input path="id" required="true" class="form-control" patttern=".{6,7}"
							title="id should contains 6 to 7 characters" /></td>
				</c:otherwise>
			</c:choose>
		<tr>
			<form:input path="id" hidden="true" />
			<td align="center"><form:label path="name">
					<spring:message text="Name" />
				</form:label></td>
			<td><form:input path="name" required="true" class="form-control" /></td>
		</tr>


		<tr>
			<td align="center"><form:label path="price">
					<spring:message text="Price" />
				</form:label></td>
			<td><form:input path="price" required="true"  class="form-control" /></td>
		</tr>

		<tr>
			<td align="center"><form:label path="description">
					<spring:message text="Description" />
				</form:label></td>
			<td><form:input path="description" required="true" class="form-control" /></td>
		</tr>

		<tr>
			<td align="center"><form:label path="supplier">
					<spring:message text="Supplier" />
				</form:label></td>
			<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
			<td><form:select  path="supplier.name" class="form-control" items="${supplierList}"
					itemValue="name" itemLabel="name" /></td>
		</tr>
		<tr>
			<td align="center"><form:label path="category">
					<spring:message text="Category" />
				</form:label></td>
			<%-- <td><form:input path="category.name" required="true" /></td> --%>
			<td><form:select path="category.name" class="form-control" items="${categoryList}"
					itemValue="name" itemLabel="name" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><c:if test="${!empty product.name}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Edit Product"/>" />
				</c:if> <c:if test="${empty product.name}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Add Product"/>" />
				</c:if></td>
		</tr>
	</table>
</form:form>
<br>
<h3 align="center">Product List</h3>
<c:if test="${!empty productList}">
	<table class="table table-striped table-hover" align="center">
		<tr>
			<th width="80">Product ID</th>
			<th width="120">Product Name</th>
			<th width="200">Product Description</th>
			<th width="80">Price</th>
			<th width="80">Product Category</th>
			<th width="80">Product Supplier</th>
			<th width="60">Edit</th>
			<th width="60">Delete</th>
		</tr>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td>${product.category.name}</td>
				<td>${product.supplier.name}</td>
				<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
				<td><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
<%@include file="/includes/Fotter.jsp"%>
