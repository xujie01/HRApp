<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>人事管理系统</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="${ctx}/css/lock.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.ico">
<script type="text/javascript" src="${ctx }/js/jquery-1.11.0.js"></script>
<script type="text/javascript">
   
   $(function(){
	    /** 按了回车键 */
	   $(document).keydown(function(event){
		   if(event.keyCode == 13){
			   $("#login-submit-btn").trigger("click");
		   }
	   })

	   /** 给登录按钮绑定点击事件  */
	   $("#login-submit-btn").on("click",function(){
		   /** 校验登录参数 ctrl+K */
		   var loginname = $("#loginname").val();
		   var password = $("#password").val();
		   
		   var msg = "";
		   
		   if(!/^\w{4,20}$/.test(loginname)){
			     msg = "登录名长度必须是6~20之间";
		   }else if(!/^\w{4,20}$/.test(password)){
			     msg = "密码长度必须是6~20之间";
		   }
		   if(msg !=""){
			   $.ligerDialog.error(msg);
			   return;
		   }
		   /** 提交表单 */
		   $("#loginForm").submit();
		   
	   })
	   
   })
 


</script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body style="font-family: 微软雅黑">
	<div class="page-lock">
		<div class="page-logo" style="margin-bottom: 2px">
			<a class="brand" href="index.jsp"
				style="font-size: 22px; color: #FFF;text-decoration: none;"> 人事管理<font color="#FFCC00">Hrm系统
			</a>
		</div>
		<form action="login" method="post" id="loginForm">
			<div class="page-body">
				<img class="page-lock-img"
					src="${ctx}/images/login/logo2.jpg" alt="">
				<div class="page-lock-info">
					<span>&nbsp;</span> 
					<c:choose>
						<c:when test="${requestScope.message == null }">
							<span style="padding-top: 5px">允许以中文名称登录</span>
						</c:when>
						<c:otherwise>
							<span style="padding-top: 5px"><font color="red">${requestScope.message}</font></span>
						</c:otherwise>
					</c:choose>

					<div style="padding-bottom: 10px;">
						<input class="m-wrap" style="width: 247px;height:28px"
							type="text" placeholder="帐号" id="loginname" name="loginname"
							value="admin">
					</div>
					<div style="padding-bottom: 10px;">
						<input class="m-wrap" style="width: 247px;height:28px"
							type="password" placeholder="密码" id="password" name="password"
							value="123456">
					</div>
				</div>
				<div class="relogin">
						<!-- 单击登录 -->
						<button type="submit" id="login-submit-btn" 
							style="margin-left: 20px;color: white;border-width: 0;cursor: pointer;padding: 5px 10px;background-color: rgb(53, 170, 71);">
							登录
						</button>
				</div>
			</div>
			<div class="page-footer" style="color: #fff">
				兼容浏览器IE8+，最佳分辨率1280*800. <br>2015 @ <a href="https://github.com/xujie01/HRApp" target="#" style="color: #fff">源代码</a>
			</div>
		</form>
	</div>
	
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="${ctx}/js/jquery.backstretch.min.js"
		type="text/javascript"></script><!-- 动态设置背景图片 -->
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="${ctx}/js/scripts/lock.js"></script>
	<script>
		$(function() {
			Lock.init();/* 动态设置背景图片 */
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>