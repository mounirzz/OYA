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

<body class="hold-transition register-page">
<div class="register-box">

  <div class="register-box-body">
	  <div class="register-logo">
		<a href="../../index.html"><b>O.Y.A</b>Office of Young Architecture</a>
	  </div>
    <p class="login-box-msg">Enregistrer un nouvel Membre</p>
    			 
      <c:if test="${not empty error}">
			  <div id="error" class="alert alert-success">${error}</div>
				  <script type="text/javascript">
					   setTimeout(function () {
					     $('#error').hide('slow');
					      }, 4000);
					 </script>
		  </c:if>
    <form:form role="form" action="${ctx}/user/reg" method="post" class="form-element">
      <div class="form-group has-feedback">
        <input type="text" name="username" id="username" class="form-control" placeholder="Votre Username">
        <span class="ion ion-person form-control-feedback "></span>
      </div>
      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="mail" id="email2" placeholder="Votre Email">
        <span class="ion ion-email form-control-feedback "></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" id="password" placeholder="Mot de passe">
        <span class="ion ion-locked form-control-feedback "></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Confirmez le mot de passe">
        <span class="ion ion-log-in form-control-feedback "></span>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="checkbox">
            <input type="checkbox" id="basic_checkbox_1" >
			<label for="basic_checkbox_1">Je suis d'accord avec les <a href="#"><b>Conditions</b></a></label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-12 text-center">
          <button type="submit" class="btn btn-info btn-block margin-top-10" name="register" value="CREER" >S'inscrire</button>
        </div>
        <!-- /.col -->
      </div>
    </form:form>
	
	<div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-social-icon btn-circle btn-facebook"><i class="fa fa-facebook"></i></a>
      <a href="#" class="btn btn-social-icon btn-circle btn-google"><i class="fa fa-google-plus"></i></a>
    </div>
	<!-- /.social-auth-links -->
    
     <div class="margin-top-20 text-center">
    	<p>Vous avez déjà un compte?<a href="login.html" class="text-info m-l-5">SE CONNECTER</a></p>
     </div>
    
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->



<%@ include file="/common/include-base-js-man.jsp" %>
<script src="${ctx }/js/login.js" type="text/javascript"></script>
</body>
</html>
