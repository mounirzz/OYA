<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Authentification</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-style-man.jsp" %>
    <%@ include file="/common/include-base-scss-man.jsp" %>
    
</head>

<body class="hold-transition login-page">
<div class="row positrow"><a href="${ctx}/admin/login">
        <div class="col-xl-3 col-md-6 col-6 flex-5">
          <!-- small box -->
          <div class="small-box bg-info pull-up bg-hexagons-white">
            <div class="inner">
              <h2 class="h2inner">Espace Associé</h2>
            </div>
            <div class="icon">
              <i class="fa fa-globe"></i>
            </div>
            <a href="#" class="small-box-footer">Se connecter <i class="fa fa-arrow-right"></i></a>
          </div>
       </div></a>
        <!-- ./col -->
        <a href="${ctx}/user/login">
        <div class="col-xl-3 col-md-6 col-6 flex-5">
          <!-- small box -->
          <div class="small-box bg-success pull-up bg-hexagons-white">
            <div class="inner">
              <h2 class="h2inner">Espace Collaborateur</h2>
            </div>
            <div class="icon">
              <i class="fa fa-globe"></i>
            </div>
            <a href="#" class="small-box-footer">Se connecter<i class="fa fa-arrow-right"></i></a>
          </div>
        </div></a>
        <!-- ./col -->
        <a href="${ctx}/client/login">
        <div class="col-xl-3 col-md-6 col-6 flex-5">
          <!-- small box -->
          <div class="small-box bg-primary pull-up bg-hexagons-white">
            <div class="inner">
              <h2 class="h2inner">Espace Client</h2>
            </div>
            <div class="icon">
              <i class="fa fa-globe"></i>
            </div>
            <a href="#" class="small-box-footer">Se connecter<i class="fa fa-arrow-right"></i></a>
          </div>
        </div></a>
        <!-- ./col -->
      </div>
      
<div class="login-box">
  <div class="login-logo">
    <a href="../../index.html"><b>O.Y.A</b>Office of Young Architecture</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Connectez-vous pour commencer votre session</p>

    <form:form role="form" action="${ctx}/client/login" method="post" class="form-element">
   		<c:if test="${not empty param.errorpwd}"><div id="errorPwd" class="alert alert-danger"> Le mot de passe de l'administrateur est incorrect ... </div>
   				<script type="text/javascript">setTimeout(function(){
   					$('#errorPwd').hide('slow');
   				}, 5000);</script>
   		</c:if>
   		  <!--   masquer automatiquement le message -->
		<c:if test="${not empty param.error}">
				<div id="error"  class="alert alert-danger">Non connecté ou session échoué ...</div>
					<script type="text/javascript">
					                setTimeout(function () {
					                    $('#error').hide('slow');
					                }, 5000);
					 </script>
	 </c:if>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="username" id="username" placeholder="username">
        <span class="ion ion-email form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" id="password" class="form-control" placeholder="Password">
        <span class="ion ion-locked form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-6">
          <div class="checkbox">
            <input type="checkbox" id="id="remember-me" >
			<label for="remember-me">Remember Me</label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-6">
         <div class="fog-pwd">
          	<a href="javascript:void(0)"><i class="ion ion-locked"></i> Mot de passe oublié?</a><br>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-12 text-center">
          <button type="submit" name="login" value="login" class="btn btn-info btn-block margin-top-10">SE CONNECTER</button>
        </div>
        <!-- /.col -->
      </div>
    </form:form>

    <div class="social-auth-links text-center">
      <p>- OR -</p>
    </div>
    <!-- /.social-auth-links -->
 		<div class="text-center">
          <a  href="http://localhost:8031/user/login" class="btn btn-info btn-block margin-top-10">SE CONNECTER USER</a>
        </div>
    <div class="margin-top-30 text-center">
    	<p>Vous n'avez pas de compte? <a href="${ctx}/admin/reg" class="text-info m-l-5">S'inscrire</a></p>
    </div>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->



<%@ include file="/common/include-base-js-man.jsp" %>
<script src="${ctx }/js/login.js" type="text/javascript"></script>
</body>
</html>