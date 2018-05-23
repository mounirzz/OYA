<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>${title}</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/index.css"/>
    <%@ include file="/common/include-base-js.jsp" %>
    <script src="${ctx }/js/user.js" type="text/javascript"></script>
</head>

<body>
 <%@include file="/common/user-admin-nav.jsp" %>

   	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>My Profile</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>My Profile</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
	  <form:form  action="${ctx}/user/updateUser"  method="post" id="regForm" class="form-signin" >
			<!-- Profile -->
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4 class="gray">Profile Details</h4>
					<div class="dashboard-list-box-static">
						<!-- Avatar -->
						<div class="edit-profile-photo">
							<img src="images/avatar.jpg" alt="">
							
						</div>
						<!-- Details -->
						<div class="my-profile">
						
							<label>Nom & Prenom</label>
							<input value="${user.account}  ${user.telPhone}" type="text" style="color:#000">
							
							<label>Nom du compte</label>
							<input value="${user.username}"" type="text" style="color:#000">

							<label>Téléphone</label>
							<input value="${user.phone}" type="text" style="color:#000">

							<label>Email</label>
							<input value="${user.slat}" type="text" style="color:#000">

							<label>description</label>
							<textarea name="notes" id="notes" style="color:#000" cols="30" rows="10" value="${user.remark}"></textarea>

							<label><i class="fa fa-telegram"></i> Code postal</label>
							<input placeholder="####" type="text" style="color:#000" value="${user.zipCode}">

							<label><i class="fa fa-address-card"></i> Adresse</label>
							<input placeholder="#####" type="text" style="color:#000" value="${user.address}">

							<label><i class=""></i> CIN</label>
							<input placeholder="#####" type="text" style="color:#000" value="${user.point}">
							<label><i class=""></i> Note</label>
							<input placeholder="#####" type="text" style="color:#000" value="${user.spc}">
						</div>
	
						
						

					</div>
				</div>
			</div>

						<!-- Change Password -->
						<div class="col-lg-6 col-md-12">
							<div class="dashboard-list-box margin-top-0">
								<h4 class="gray">Change Password</h4>
								<div class="dashboard-list-box-static">
			
									<!-- Change Password -->
									<div class="my-profile">
										<label class="margin-top-0" >Current Password</label>
										<input type="password">
			
										<label>New Password</label>
										<input type="password">
			
										<label>Confirm New Password</label>
										<input type="password">
			
										<button type="submit" class="button margin-top-15">Save Changes</button>
						<button class="button margin-top-15 delAddresslBtn" addressId="${userAddress.id}">Supprimer mes informations</button>
						<button class="button margin-top-15 editAddresslBtn" addressId="${userAddress.id}">Modifier mes informations</button>
									</div>
								</div>
							</div>
						</div>
			</form:form>
<!-- /container -->
<%@include file="/common/footer.jsp" %>
		</div>

		</div>

	</div>
	<!-- Content / End -->


</div>
<!-- Dashboard / End -->


</div>
<!-- Wrapper / End -->
</body>
</html>