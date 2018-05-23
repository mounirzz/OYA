<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Atriem Facture</title>
	<link rel="stylesheet" href="${ctx}/common/css/invoice.css">
</head> 

<body>

<!-- Print Button -->
<a href="javascript:window.print()" class="print-button">Imprimer cette facture</a>

<!-- Facture -->
<div id="invoice" >

	<!-- Header -->
	<div class="row">
		<div class="col-md-6">
			<div id="logo"><img src="images/logo.png" alt=""></div>
		</div>

		<div class="col-md-6">	

			<p id="details">
				<strong>Numuro de la reservation :</strong>${orderItem.order.orderNumber}<br>
				<strong>Publié:</strong> ${orderItem.order.createTime} <br>
				7 jours à compter de la date d'émission
			</p>
		</div>
	</div>


	<!-- Client & Fournisseur -->
	<div class="row">
		<div class="col-md-12">
			<h2>Facture</h2>
		</div>

		<div class="col-md-6">	
			<strong class="margin-bottom-5">Fournisseur</strong>
			<p>
				Atriem France. <br>
				2 rue Eugène Pottier <br>
				78190 Trappes en Yvelines  <br>
			</p>
		</div>

		<div class="col-md-6">	
			<strong class="margin-bottom-5">Client</strong>
			<p>
				${orderItem.order.user.nom} - ${orderItem.order.user.prenom} <br>
				${orderItem.order.user.account}  ${orderItem.order.user.phone} <br>
				${orderItem.order.user.address} <br>
				${orderItem.order.user.zipCode} <br>
			</p>
		</div>
	</div>


	<!-- Invoice -->
	<div class="row">
		<div class="col-md-12">
			<table class="margin-top-20">
				<tr>
					<th>Description</th>
					<th>kilométrage de véhicule</th>
					<th>TVA</th>
					<th>Total</th>
				</tr>

				<tr>
					<td>${orderItem.product.title}</td> 
					<td>${orderItem.product.km}</td>
					<td>0.00€</td>
					<td>${orderItem.product.prix}€</td>
				</tr>
			</table>
		</div>
		
		<div class="col-md-4 col-md-offset-8">	
			<table id="totals">
				<tr>
					<th>Total prix</th> 
					<th><span>${orderItem.product.prix}€</span></th>
				</tr>
			</table>
		</div>
	</div>


	<!-- Footer -->
	<div class="row">
		<div class="col-md-12">
			<ul id="footer">
				<li><span>www.atriemfrance.com</span></li>
				<li><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="127d74747b717752776a737f627e773c717d7f">[email&#160;protected]</a></li>
				<li>+33 (0)1 76 78 36 58</li>
			</ul>
		</div>
	</div>
		
</div>


<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/78d64697/cloudflare-static/email-decode.min.js"></script></body>
</html>