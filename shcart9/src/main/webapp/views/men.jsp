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
				<li><a href="women">woMen</a></li>
				</ul>
		</div>
	</div>
</nav>

<div class="row text-center">
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10001.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
			<p>
				<strong>ROLEX</strong>
			</p>
			<P>$2500</P>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10002.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image" />
			<p>
				<strong>FOSSIL</strong>
			</p>
			<p>$2700</p>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="thumbnail">
			<img src="<c:url value="/resources/images/P10003.PNG"/>"
				class="img-responsive" style="width: 100%" alt="Image">
			<p>
				<strong>KILLER</strong>
			</p>
			<p>$2900</p>
		</div>
	</div>
</div>


<%@include file="/includes/Fotter.jsp"%>
