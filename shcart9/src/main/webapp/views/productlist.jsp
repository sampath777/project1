<%@include file="/includes/Head.jsp"%>
<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr  class="bg-success">
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.id}.PNG" />" alt="image" style="width:50%;"/></td>
                    <td>${product.Name}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD </td>
              
               <td><a href="<spring:url value="/product/get/${product.id}" />"  
							class="btn btn-primary"> <span
								class="glyphicon-info-sign glyphicon"> </span> Details
						</a> </td>
                </tr>
            </c:forEach>
        </table>
</div>
<%@include file="/includes/Fotter.jsp"%>
