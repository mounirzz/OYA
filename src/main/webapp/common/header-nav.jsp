<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container">

	<!-- Header -->
	<div id="header">
		<div class="container">
			
				<!-- Left Side Content -->
			<div class="left-side">
				
				<!-- Logo -->
				<div id="logo">
					<a href="${ctx}/"><img src="images/logo.png" alt=""></a>
					<a href="${ctx}/" class="dashboard-logo"><img src="images/logo2.png" alt=""></a>
				</div>

				<!-- Mobile Navigation -->
				<div class="menu-responsive">
					<i class="fa fa-reorder menu-trigger"></i>
				</div>

				<!-- Main Navigation -->
				<nav id="navigation" class="style-1">
					<ul id="responsive">

						<li><a href="${ctx}/">Accueil</a>
						
						</li>

						<li><a href="${ctx}/news/">Annonces</a>
						</li>

						<li><a href="${ctx}/product/">Liste des voitures</a>
						</li>

						<li><a href="#">Contact</a>
						</li>
						
					</ul>
				</nav>
				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
				
			</div>
			<!-- Left Side Content / End -->

			<!-- Right Side Content / End -->
			<div class="right-side">
				<div class="header-widget">
				
				  <c:choose>
                    <c:when test="${not empty login_user}">
					<!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_user.username}</div>
						<ul>
							<li><a href="${ctx}/user/profile"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="dashboard-messages.html"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/user/profile"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/user/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="${ctx}/order/" class="button border with-icon gris">Ajouter une annonce<i class="fa fa-plus"></i></a>
					
					</c:when>
                    <c:when test="${not empty login_admin}">
                    <!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_admin.username}</div>
						<ul>
							<li><a href="${ctx}/admin/product"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="dashboard-messages.html"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/user/profile"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/admin/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="${ctx}/order/" class="button border with-icon">Ajouter une annonce<i class="fa fa-plus"></i></a>					
					
                    </c:when>
                    <c:otherwise>
         
					<a href="#sign-in-dialog" class="sign-in popup-with-zoom-anim"><i class="fa fa-sign-in"></i> M'identifier</a>
								<a href="${ctx}/admin/login" class="button border with-icon">Ajouter une annonce<i class="fa fa-plus"></i></a>
				</div>
			</div>

			<!-- Sign In Popup -->
			<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">

				<div class="small-dialog-header">
					<h3>M'identifier</h3>
				</div>

				<!--Tabs -->
				<div class="sign-in-form style-1">

					<ul class="tabs-nav">
						<li class=""><a href="#tab1">M'identifier</a></li>
						<li><a href="#tab2">Créez un compte</a></li>
					</ul>

					<div class="tabs-container alt">

						<!-- Login -->
						<div class="tab-content" id="tab1" style="display: none;">
							<form:form role="form" action="${ctx}/user/login"
             													  method="post" class="login">
					                <!--   masquer automatiquement le message -->
					        <c:if test="${not empty param.errorPwd}">
					            <div id="errorPwd" class="alert alert-success">Le mot de passe de l'utilisateur est incorrect ...</div>
					           <!--   masquer automatiquement le message -->
					            <script type="text/javascript">
					                setTimeout(function () {
					                    $('#errorPwd').hide('slow');
					                }, 5000);
					            </script>
					        </c:if>
					         <!--   masquer automatiquement le message -->
					        <c:if test="${not empty param.error}">
					            <div id="error" class="alert alert-success">Non connecté ou session échoué ...</div>
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
			<!-- Sign In Popup / End -->
    	  </c:otherwise>
     </c:choose>
		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->