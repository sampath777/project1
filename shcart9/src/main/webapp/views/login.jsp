<%@include file="/includes/Head.jsp"%>

<div class="panel-body">
	<div class="row">
		<div class="col-lg-12">
			<form id="login-form" name="f" action="j_spring_security_check"
				method="post" role="form" style="display: block;">

				<div class="form-group">
					<input type="text" name="j_username" id="username" tabindex="1"
						class="form-control" placeholder="Username" value="">
				</div>

				<div class="form-group">
					<input type="password" name="j_password" id="password" tabindex="2"
						class="form-control" placeholder="Password">
				</div>

				<div class="form-group text-center">
					<input type="checkbox" tabindex="3" class="" name="remember"
						id="remember"> <label for="remember"> Remember Me</label>
				</div>

				<div class="form-group">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<input type="submit" name="login-submit" id="login-submit"
								tabindex="4" class="form-control btn btn-login" value="Log In">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<%-- Please login with your credentials
	<br> ${message}
	<form:form action="isValidUser" method="post">
		<table align="center" class="table">
			<tr class="success">
				<td>User Name:</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr class="active" align="center">
				<td colspan="2"><button type="submit" id="form1"
						class="btn btn-primary">SUBMIT</button></td>

			</tr>

		</table>
	</form:form>
 --%>


<%@include file="/includes/Fotter.jsp"%>
