<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Authentification</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/login.css"/>
</head>

<body>

<%@include file="/common/header-nav.jsp" %>
<div class="container">

				<div class="small-dialog-header">
					<h3>M'identifier</h3>
				</div>

				<!--Tabs -->
				<div class="sign-in-form style-1" style="margin: 0px -36px 0 258px;">

					<ul class="tabs-nav">
						<li class=""><a href="#tab1">M'identifier</a></li>
						<li><a href="#tab2">Créez un compte</a></li>
					</ul>

					<div class="tabs-container alt" style=" width: 70%;">

						<!-- Login -->
						<div class="tab-content" id="tab1" style="display: none;">
							<form:form role="form" action="${ctx}/user/login"
             													  method="post" class="login">
					                <!--   masquer automatiquement le message -->
					        <c:if test="${not empty param.errorPwd}">
					            <div id="errorPwd" class="notification error closeable">Le mot de passe de l'utilisateur est incorrect ...</div>
					           <!--   masquer automatiquement le message -->
					            <script type="text/javascript">
					                setTimeout(function () {
					                    $('#errorPwd').hide('slow');
					                }, 5000);
					            </script>
					        </c:if>
					         <!--   masquer automatiquement le message -->
					        <c:if test="${not empty param.error}">
					            <div id="error" class="notification error closeable">Non connecté ou session échoué ...</div>
					            <script type="text/javascript">
					                setTimeout(function () {
					                    $('#error').hide('slow');
					                }, 5000);
					            </script>
					        </c:if>

								<p class="form-row form-row-wide">
									<label for="username">Username:
										<i class="fa fa-user"></i>
										<input type="text" class="input-text" style="color: #000 ;" name="username" id="username" value="" />
									</label>
								</p>

								<p class="form-row form-row-wide">
									<label for="password">Mot de passe:
										<i class="fa fa-key"></i>
										<input class="input-text" type="password"   style="color: #000 ;" name="password" id="password"/>
									</label>
									<span class="lost_password">
										<a href="#" >Mot de passe oublié ?</a>
									</span>
								</p>

								<div class="form-row">
									<input type="submit" class="button border margin-top-5"  style="color: #000 ;" name="login" value="Login" />
									<div class="checkboxes margin-top-10">
										<input id="remember-me" type="checkbox"  name="check">
										<label for="remember-me">Remember Me</label>
									</div>
								</div>
								
							 </form:form>
						</div>

						<!-- Register -->
						<div class="tab-content" id="tab2" style="display: none;">
					  <c:if test="${not empty error}">
					        <div id="error" class="alert alert-success">${error}</div>
					        <script type="text/javascript">
					            setTimeout(function () {
					                $('#error').hide('slow');
					            }, 4000);
					        </script>
					    </c:if>
					    <form:form role="form" action="${ctx}/user/reg"
					               method="post" class="register">
								
							<p class="form-row form-row-wide">
								<label for="username2">Username:
									<i class="fa fa-user"></i>
									<input type="text" class="input-text" name="username"  style="color: #000 ;" id="username" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="password1">Mot de passe:
									<i class="fa fa-key"></i>
									<input class="input-text" type="password" name="password"  style="color: #000 ;" id="password"/>
								</label>
							</p>

							<p class="form-row form-row-wide">
								<label for="password2">Confirmé le mot de passe:
									<i class="fa fa-key"></i>
									<input class="input-text" type="password" name="password"  style="color: #000 ;" id="password"/>
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="email2">Email Address:
									<i class="fa fa-envelope-o"></i>
									<input type="text" class="input-text" name="email" style="color: #000 ;"  id="email2" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="username2">Nom:
									<i class="fa fa-user"></i>
									<input type="text" class="input-text" name="nom" style="color: #000 ;" id="username2" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="username2">Prenom:
									<i class="fa fa-user"></i>
									<input type="text" class="input-text" name="prenom" style="color: #000 ;" id="username2" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="username2">CIN:
									<i class="fa fa-user"></i>
									<input type="text" class="input-text" name="cin" style="color: #000 ;" id="username2" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="username2">Adress:
									<i class="fa fa-location-arrow"></i>
									<input type="text" class="input-text" name="adress" style="color: #000 ;" id="username2" value="" />
								</label>
							</p>
								<p class="form-row form-row-wide">
								<label for="username2">Telephone:
									<i class="fa fa-phone"></i>
									<input type="text" class="input-text" name="telephone" style="color: #000 ;" id="username2" value="" />
								</label>
							</p>
											<input type="submit" class="button border fw margin-top-10" name="register" value="CREER" />
	
							 </form:form>
						</div>

					</div>
				</div>
			
</div>
<!-- /container -->

<%@ include file="/common/include-base-js.jsp" %>
<script src="${ctx }/js/login.js" type="text/javascript"></script>
</body>
</html>