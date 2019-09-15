<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>客户管理系统</title>
	<!-- Core CSS - Include with every page -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

	<!-- SB Admin CSS - Include with every page -->
	<link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
</head>

<body>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" style="text-align: center">客户管理系统登录页面</h3>
				</div>
				<div class="alert alert-danger alert-dismissable" id="message" >
					${msg}
				</div>
				<div class="panel-body">
					<form action="${pageContext.request.contextPath }/login"
						  method="post" onsubmit="return check()" role="form">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="用户名" id="usercode" type="text" name="usercode" autofocus>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="密码" id="password" type="password" name="password"  value="">
							</div>
							<!-- Change this to a button or input when using this as a form -->
<%--							<a href="#" class="btn btn-lg btn-success btn-block"></a>--%>
							<input class="btn btn-lg btn-success btn-block" type="submit" value="登录" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script>
	$(document).ready(function(){
		var msg = "${msg}";
		if (msg == ""){
			$("#message").css("display", "none");
		}
	});

	function check(){
		var usercode = $("#usercode").val();
		var password = $("#password").val();
		if(usercode=="" || password==""){
			$("#message").css("display", "block");
			$("#message").text("账号或密码不能为空！");
			return false;
		}
		return true;
	}
</script>
</html>

