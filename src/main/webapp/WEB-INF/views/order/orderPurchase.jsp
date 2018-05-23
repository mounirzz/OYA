<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Autocar ATRIEM FRANCE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <%@ include file="/common/global.jsp" %>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
  <%@ include file="/common/header-nav.jsp" %>

<style type="text/css">
.payment-logo{height:24px;position:absolute;right:19px;top:18px;image-rendering:-webkit-optimize-contrast;}
.payment-logo.paypal{height:16px;top:22px;}
.payment-tab-trigger>input{position:absolute;visibility:hidden;}
.payment-tab-trigger{padding:0px 20px;}
.payment-tab-trigger>label{cursor:pointer;display:block;position:relative;top:0;padding:14px 0;top:1px;margin-bottom:0;font-weight:500;}
.payment-tab-trigger>label::before{transition:0.2s;box-sizing:border-box;background-color:#fff;border:2px solid #d0d0d0;border-radius:100%;content:"";display:inline-block;margin-right:10px;position:relative;top:4px;width:20px;height:20px;}
.payment-tab-trigger>label::after{background:#fff;border-radius:100%;content:"";display:inline-block;position:absolute;left:7px;top:25px;width:6px;height:6px;transition:0.2s;transform:scale(0);}
.payment-tab-trigger>input:checked~label::before{border-color:#66676b;}
.payment-tab-trigger>input:checked~label::after{background-color:#66676b;transform:scale(1);}
.payment{border:2px solid #f2f2f2;border-radius:4px;overflow:hidden;}
.payment-tab{background:#f2f2f2;box-sizing:border-box;max-height:60px;overflow:hidden;position:relative;transition:all 0.3s 0s ease-in-out;width:100%;}
.payment-tab:first-of-type{border-radius:4px 4px 0 0;}
.payment-tab:last-of-type{border-radius:0 0 4px 4px;}
.payment-tab.payment-tab-active{max-height:400px;background:#fff;}@media (max-width: 991px) {
.payment-tab.payment-tab-active{max-height:800px;}}
.payment-tab-content{padding:0 20px 20px 20px;background-color:#fff;visibility:hidden;opacity:0;transition:0.2s ease-in-out;}
.payment-tab.payment-tab-active .payment-tab-content{visibility:visible;opacity:1;}
.card-label>input{box-sizing:border-box;display:block;height:51px;margin:-14px auto 5px;padding:5px 15px 0 15px;transition:border-color 0.3s;width:100%;border:1px solid #dbdbdb;background-color:#fff;text-decoration:none;border-radius:4px;box-shadow:0 1px 3px 0px rgba(0,0,0,0.06);}
.card-label>label{background-color:#fff;display:inline-block;margin:6px auto auto 8px;font-size:13px;padding:0px 7px;font-weight:500;color:#909090;}
.payment-tab p{margin:10px 0;}
</style>
  </head>
  <body>
  <!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2 style="color:white;">Reservation</h2><span style="color:white;">Reservation</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul style="color:white;">
						<li><a href="#" >Home</a></li>
						<li>Reservation</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>

	<div class="container">
		<div class="row">
				<div class="col-md-12">
		  <div class="box-body wizard-content">
					<form action="#" class="tab-wizard wizard-circle wizard clearfix" role="application" id="steps-uid-0"><div class="steps clearfix"><ul role="tablist">
					<li role="tab" class="first done" aria-disabled="false" aria-selected="false">
					<a id="steps-uid-0-t-0" href="#steps-uid-0-h-0" aria-controls="steps-uid-0-p-0">
						<span class="step">1</span> Personal Info</a></li>
					<li role="tab" class="first done" aria-disabled="false">
					<a id="steps-uid-0-t-1" href="#steps-uid-0-h-1" aria-controls="steps-uid-0-p-1">
						<span class="step">2</span> Job Status</a></li>
					<li role="tab" class="current" aria-disabled="true">
					<a id="steps-uid-0-t-2" href="#steps-uid-0-h-2" aria-controls="steps-uid-0-p-2">
						<span class="current-info audible">current step: </span>
						<span class="step">3</span> Interview</a></li>
		
					</ul>
					</div>
					<div class="content clearfix">
						<!-- Step 1 -->
						<h6 id="steps-uid-0-h-0" tabindex="-1" class="title current">Personal Info</h6>
						<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
		
						</section>
						<!-- Step 2 -->
						<h6 id="steps-uid-0-h-1" tabindex="-1" class="title">Job Status</h6>
						<section id="steps-uid-0-p-1" role="tabpanel" aria-labelledby="steps-uid-0-h-1" class="body" aria-hidden="true" style="display: none;">
						
						</section>
						<!-- Step 3 -->
						<h6 id="steps-uid-0-h-2" tabindex="-1" class="title">Interview</h6>
						<section id="steps-uid-0-p-2" role="tabpanel" aria-labelledby="steps-uid-0-h-2" class="body" aria-hidden="true" style="display: none;">
						
						</section>
						<!-- Step 4 -->
						<h6 id="steps-uid-0-h-3" tabindex="-1" class="title">Remark</h6>
						<section id="steps-uid-0-p-3" role="tabpanel" aria-labelledby="steps-uid-0-h-3" class="body" aria-hidden="true" style="display: none;">	
						</section>
					</div>
				</form>
		        </div>
		    </div>
		</div>
	</div>

<!-- Content
================================================== -->
<div class="container">
 <form:form cssClass="form-horizontal" action="${ctx}/order/ordering" method="post">
<div class="row">

		<!-- Content
		================================================== -->
		<div class="col-lg-8 col-md-8 padding-right-30">

			<h3 class="margin-top-0 margin-bottom-30">Personal Details</h3>

			<div class="row">

				<div class="col-md-6">
					<label>Address</label>
					<input type="text" name="address" value="" style="color:black">
				</div>

				<div class="col-md-6">
					<label>Code postal</label>
					<input type="text" value="" name="zipcode" style="color:black">
				</div>

				<div class="col-md-6">
					<div class="input-with-icon medium-icons">
						<label>Téléphone</label>
						<input type="text" value="" name="phone" style="color:black">
						<i class="fa fa-phone"></i>
					</div>
				</div>

				<div class="col-md-6">
					<div class="input-with-icon medium-icons">
						<label>Personne de contact</label>
						<input type="text" value="" name="consignee" style="color:black">
						<i class="fa fa-user"></i>
					</div>
				</div>
			</div>
			
		<h3 class="margin-top-0 margin-bottom-30">Payment Method</h3>
			

			<div class="payment">

				<div class="payment-tab">
					<div class="payment-tab-trigger">
						<input checked="" id="paypal" name="cardType" style="color:black" type="radio" value="paypal">
						<label for="paypal">PayPal</label>
						<img class="payment-logo paypal" src="https://i.imgur.com/ApBxkXU.png" alt="">
					</div>

					<div class="payment-tab-content">
						<p>Vous serez redirigé vers PayPal pour effectuer le paiement.</p>
					</div>
				</div>


				<div class="payment-tab payment-tab-active">
					<div class="payment-tab-trigger">
						<input type="radio" name="cardType" id="creditCart" style="color:black" value="creditCard">
						<label for="creditCart">Credit / Debit Card</label>
						<img class="payment-logo" src="https://i.imgur.com/IHEKLgm.png" alt="">
					</div>

					<div class="payment-tab-content">
						<div class="row">

							<div class="col-md-6">
								<div class="card-label">
									<label for="nameOnCard">Name on Card</label>
									<input id="nameOnCard" name="" style="color:black" required="" type="text">
								</div>
							</div>

							<div class="col-md-6">
								<div class="card-label">
									<label for="cardNumber">Card Number</label>
									<input id="cardNumber" name="" style="color:black" placeholder="1234  5678  9876  5432" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="expirynDate">Expiry Month</label>
									<input id="expiryDate" placeholder="MM" style="color:black" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="expiryDate">Expiry Year</label>
									<input id="expirynDate" placeholder="YY"  style="color:black" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="cvv">CVV</label>
									<input id="cvv" required="" style="color:black" type="text">
								</div>
							</div>

							</div>
						</div>
					</div>

				</div>

		 
		</div>
                  
  <c:forEach items="${sessionScope.cart}" var="cartItem">
     <c:set var="ci" value="${cartItem.value}"></c:set>
		<!-- Sidebar
		================================================== -->
		<div class="col-lg-4 col-md-4 margin-top-0 margin-bottom-60" pid="${ci.product.id}">

			<!-- Booking Summary -->
			<div class="listing-item-container compact order-summary-widget">
				<div class="listing-item" >
					<img src="images/listing-item-04.jpg" alt="">

					<div class="listing-item-content">
						<div class="numerical-rating high" data-rating="${ci.product.code}"></div>
						<h3>${ci.product.title}</h3>
						<span>${ci.product.point}</span>
					</div>
				</div>
			</div>
			
				<div class="boxed-widget opening-hours summary margin-top-0">
				<h3><i class="fa fa-calendar-check-o"></i> Booking Summary</h3>
				<ul>
					<li>Date de circulation<span>${ci.product.anneecirculation}</span></li>
					<li>Type de carburant <span>${ci.product.carburant} </span></li>
					<li>Numbre de km <span>${ci.product.km}</span></li>
					<li class="total-costs">Total Prix <span>${ci.total}</span></li>
				</ul>

			</div>
			<!-- Booking Summary / End --> 

		</div>
		 </c:forEach>
		 <a href="${ctx}/cart/" class="button booking-confirmation-btn margin-top-40 margin-bottom-65 btn btn-primary" style="float: left; margin-bottom:0px !important">Retour</a>
		 <button type="submit" href="${ctx}/order/ordering/" class="button booking-confirmation-btn margin-top-40 margin-bottom-65 btn btn-primary" style="float: left; margin-bottom:0px !important">Confirm and Pay</button>
		 
            <div id="delSuccess" class="alert alert-success" style="display: none;">Supprimé avec succès . . .</div>
            <div id="delAllSuccess" class="alert alert-success" style="display: none;">liste des reservation effacé ...</div>
       
       
	<!--  <div class="col-md-6 col-xs-3 text-left">
            <a  href="/cart/" class="button medium border"><i class="fa fa-arrow-left"></i>Retour au panier</a>
            </div>
            <!--      <div class="col-md-6 col-xs-3 text-right">
            <button  type="submit" href="${ctx}/order/ordering/" class="button medium border"><i class="fa fa-arrow-right"></i>Confirmation</button>
            
    		    </div>  -->
     
	</div>
	</form:form> 
</div>
	  <%@include file="/common/footer-in.jsp" %>
 <script src="${ctx }/js/cart.js" type="text/javascript"></script>
  </body>
</html>