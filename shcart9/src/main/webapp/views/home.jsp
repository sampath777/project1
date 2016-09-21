<%@include file="/includes/Head.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/menu.css"/>">
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
				<li><a href="men">MEN</a></li>
				<li><a href="women">WOMEN</a></li>

							</ul>
			<%-- 
				<c:if test="${!empty userDetails && userDetails.admin==0}">
					<li><a href="mycart"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart(
							${cartSize} )</a></li>
				</c:if>
			 --%>
		</div>
	</div>
</nav>
<%--  <c:if test="${!empty userDetails && userDetails.admin==0}"></c:if> --%>
<ul id="menu">
	<c:forEach items="${categoryList}" var="category">
		<li><a href=${category.name}>${category.name}</a>
			<ul>
				<c:forEach items="${category.products}" var="product">

					<li><a href="<c:url value='product/get/${product.id}' /> ">${product.name}</a></li>
					<%-- 							<c:set value='product'></c:set>
 --%>
				</c:forEach>

			</ul></li>
	</c:forEach>
</ul>
<div>
	<c:if test="${!empty selectedProduct.name}">
		<table>
			<tr>
				<th align="left" width="80">Product ID</th>
				<th align="left" width="120">Product Name</th>
				<th align="left" width="200">Product Description</th>
				<th align="left" width="80">Price</th>
				<th align="left" width="200">Product Category</th>
				<th align="left" width="200">Product Supplier</th>

			</tr>
			<tr>
				<td align="left">${selectedProduct.id}</td>
				<td align="left">${selectedProduct.name}</td>
				<td align="left">${selectedProduct.description}</td>
				<td align="left">${selectedProduct.price}</td>
				<td align="left">${selectedProduct.category.name}</td>
				<td align="left">${selectedProduct.supplier.name}</td>
			</tr>
		</table>
	</c:if>
</div>

<div id="displayCart">
	<c:if test="${displayCart==true}">

		<table>
			<tr>
				<th align="left" width="80">Cart ID</th>
				<th align="left" width="120">Product Name</th>
				<th align="left" width="200">Quantity</th>
				<th align="left" width="80">Price</th>
				<th align="left" width="60">Delete from Cart</th>

			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td align="left">${cart.id}</td>
					<td align="left">${cart.productName}</td>
					<td align="left">${cart.quantity}</td>
					<td align="left">${cart.price}</td>
					<td align="left"><a
						href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
					<td align="left"><a href="<c:url value='pay/${cart.id}' />">
							Proceed</a></td>
				</tr>
			</c:forEach>

		</table>

		<h2>Total cost : ${totalAmount}</h2>
		<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%>
		<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>
	</c:if>



</div>
<%@include file="/includes/Fotter.jsp"%>
