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
<script src="${ctx }/js/cart.js" type="text/javascript"></script>
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


<!-- Content
================================================== -->
<div class="container">
<div class="row">

		<!-- Content
		================================================== -->
		<div class="col-lg-8 col-md-8 padding-right-30">
		
		
			<div class="payment">

				<div class="payment-tab">
					<div class="payment-tab-trigger">
						<input checked="" id="paypal" name="cardType" type="radio" value="paypal">
						<label for="paypal">PayPal</label>
						<img class="payment-logo paypal" src="https://i.imgur.com/ApBxkXU.png" alt="">
					</div>

					<div class="payment-tab-content">
						<p>Vous serez redirigé vers PayPal pour effectuer le paiement.</p>
					</div>
				</div>


				<div class="payment-tab payment-tab-active">
					<div class="payment-tab-trigger">
						<input type="radio" name="cardType" id="creditCart" value="creditCard">
						<label for="creditCart">Credit / Debit Card</label>
						<img class="payment-logo" src="https://i.imgur.com/IHEKLgm.png" alt="">
					</div>

					<div class="payment-tab-content">
						<div class="row">

							<div class="col-md-6">
								<div class="card-label">
									<label for="nameOnCard">Name on Card</label>
									<input id="nameOnCard" name="nameOnCard" required="" type="text">
								</div>
							</div>

							<div class="col-md-6">
								<div class="card-label">
									<label for="cardNumber">Card Number</label>
									<input id="cardNumber" name="cardNumber" placeholder="1234  5678  9876  5432" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="expirynDate">Expiry Month</label>
									<input id="expiryDate" placeholder="MM" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="expiryDate">Expiry Year</label>
									<input id="expirynDate" placeholder="YY" required="" type="text">
								</div>
							</div>

							<div class="col-md-4">
								<div class="card-label">
									<label for="cvv">CVV</label>
									<input id="cvv" required="" type="text">
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>

 			 <div class="col-md-12">

			<table class="basic-table">
			<c:choose>
                <c:when test="${empty sessionScope.cart}">
  					<tbody class="text-center">
                    <tr>
                       <div class="notification warning closeable">
							<p><span>Aucune reservation manquer!</span>  reserver votre véhicule SVP ... </p>
								<a class="close"></a>
						</div>
                    </tr>
                    </tbody>
                </c:when>
                <c:otherwise>
				<tbody>
				<tr>
					  <th>nom</th>
                     <th>modèle</th>
                     <th>code</th>
                     <th>prix</th>
                     <th>quantité</th>
					 <th>Autre </th>
					</tr>

				      <c:forEach items="${sessionScope.cart}" var="cartItem">
                        <c:set var="ci" value="${cartItem.value}"></c:set>
                        <tr pid="${ci.product.id}">
                            <td>${ci.product.title}</td>
                            <td>${ci.product.model}</td>
                            <td>${ci.product.code}</td>
                            <td>${ci.product.prix}</td>
                            <td><a class="btn btn-default btn-xs delTotal">-</a> <label productid="${ci.product.id}">${ci.total}</label> <a class="btn btn-default btn-xs addTotal">+</a></td>
                            <td><a class="btn btn-info delBtn btn-xs" productid="${ci.product.id}">Supprimé la voiture</a></td>
                        </tr>
                    </c:forEach>
			</tbody>
			       </c:otherwise>
            </c:choose>
			</table>
			<div id="delSuccess" class="notification success closeable" style="display: none;">Supprimé avec succès ....</div>
        	<div id="delAllSuccess" class="notification warning closeable" style="display: none;">Le panier est vide.....</div>
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
					<li class="total-costs">Total Prix <span>${ci.product.prix}</span></li>
				</ul>

			</div>
			<!-- Booking Summary / End -->

		</div>
		 </c:forEach>
	 <div class="col-md-6 col-xs-3 text-left">
            <a  href="/cart/" class="button medium border"><i class="fa fa-arrow-left"></i>Retour au panier</a>
            </div>
                 <div class="col-md-6 col-xs-3 text-right">
            <a  type="submit" href="${ctx}/order/ordering/" class="button medium border"><i class="fa fa-arrow-right"></i>Confirmation</a>
            
    		    </div>  
	</div>
	  <%@include file="/common/footer-in.jsp" %>
  </body>
</html>