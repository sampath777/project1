<%@include file="/includes/Head.jsp" %>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminHome">Admin</a></li>
        <li><a href="userpage">User</a></li>
      </ul>
         </div>
  

<!-- slider start -->
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      <img src="<c:url value="/resources/images/bnr-1.jpg"/>"alt=""/>
      </div>
      <div class="item">
      <img src="<c:url value="/resources/images/bnr-2.jpg"/>"alt=""/>
         </div>
      <div class="item">
      <img src="<c:url value="/resources/images/bnr-3.jpg"/>"alt=""/>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  
  </nav>
  <div class="row text-center">
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10007.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10008.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10009.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image">
		</div>
	</div>
</div>
  <div class="row text-center">
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10001.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10002.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10003.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image">
		</div>
	</div>
</div>
<div class="row text-center">
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10004.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10006.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10005.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image">
		</div>
	</div>
</div>

  <%@include file="/includes/Fotter.jsp"%>
