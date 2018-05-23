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
					<h2>Ma Reservation</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Ma Reservation</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

					<!-- Profile -->
			<div class="col-lg-12 col-md-8">
				<div class="dashboard-list-box margin-top-0">
					<h4 class="gray">Profile Details</h4>
					<div class="dashboard-list-box-static">
						<!-- Details -->
						<div class="container">
						  <div class="row">
						<!-- <div class="my-profile" style=" margin-left: 0; margin-top: 0;"> -->
									<div class="col-lg-8 col-md-8 padding-right-30">
											<div class="col-md-6">
												<label>Adresse</label>
												<input value="${order.address}" type="text" style="color:#000">
											</div>
												<div class="col-md-6">
												<label>Code Postal</label>
												<input value="${order.zipcode}" type="text" style="color:#000">
											</div>
											<div class="col-md-6">
												<label>Téléphone</label>
												<input value="${order.phone}" type="text" style="color:#000">
											</div>
											<div class="col-md-6">
												<label>Personne de contact</label>
												<input value="${order.consignee}" type="text" style="color:#000">
											</div>
											<div class="col-md-6">
												<label>La date de la reservation</label>
												<textarea name="notes" id="notes" style="color:#000" cols="30" rows="10">${order.createTime}</textarea>
											</div>
											<div class="col-md-6">
												<label><i class="fa fa-telegram"></i>Délai de paiement</label>
												<input placeholder="####" type="text" style="color:#000" value="${order.shipTime}">
											</div>
											<div class="col-md-6">
												<label><i class="fa fa-address-card"></i>Délai de livraison</label>
												<input placeholder="#####" type="text" style="color:#000" value="${order.confirmTime}">
											</div>
									
										</div>
										 <c:forEach items="${order.orderItems}" var="orderItem">
											<div class="col-lg-4 col-md-4 margin-top-0 margin-bottom-60" pid="${orderItem.id}">
			
													<!-- Booking Summary -->
													<div class="listing-item-container compact order-summary-widget">
														<div class="listing-item">
															<img src="${ctx}/common/images/blog-post-04.jpg" alt="">
			
															<div class="listing-item-content">
																<div class="numerical-rating high" data-rating="5.0"></div>
																<h3><a href="${ctx}/product/${orderItem.product.id}">${orderItem.product.title}</a></h3>
																<span>${orderItem.product.point}</span>
															</div>
														</div>
													</div>
													<div class="boxed-widget opening-hours summary margin-top-0">
														<h3><i class="fa fa-calendar-check-o"></i>Récapitulatif des réservations</h3>
														<ul>
															<li>Model <span>${orderItem.product.model}</span></li>
															<li>kilométrage de voiture <span>${orderItem.product.km}</span></li>
															<li>Référence Annonce <span>${orderItem.product.code}</span></li>
															<li class="total-costs">Quantity de <span>${orderItem.quantity}</span></li>
														</ul>
			
													</div>
													<!-- Booking Summary / End -->
			
												</div>
								  </c:forEach>
						</div>

					</div>
				</div>
</div>
			</div>
</div>
			<!-- Change Password 
			<div class="col-lg-6 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4 class="gray">Change Password</h4>
					<div class="dashboard-list-box-static">

						<!-- Change Password 
						<div class="my-profile">
							<label class="margin-top-0" >Current Password</label>
							<input type="password">

							<label>New Password</label>
							<input type="password">

							<label>Confirm New Password</label>
							<input type="password">

							<button class="button margin-top-15">Change Password</button>
						</div>
					</div>
				</div>
			</div>-->
<!-- /container -->
<%@include file="/common/footer.jsp" %>

		</div>
</div>
	<!-- Content / End -->


<!-- Dashboard / End -->


<!-- Wrapper / End -->
</body>
</html>