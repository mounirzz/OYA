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
    <script src="${ctx }/js/user.js" type="text/javascript"></script>
    <script src="${ctx }/js/order.js" type="text/javascript"></script>

  </head>


<!-- Titlebar
================================================== -->
<div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2>Réservation traitée</h2>

                <!-- Breadcrumbs -->
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="#">Réservation</a></li>
                        <li>Réservation traitée</li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>


<!-- Content
================================================== -->

<!-- Container -->
<div class="container">
    <div class="row">
        <div class="col-md-12">

            <div class="booking-confirmation-page" pid="${order.id}">
                <i class="fa fa-check-circle"></i>
                <h2 class="margin-top-30">Merci pour votre réservation!</h2>
                <p>Vous recevrez un email de confirmation à <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="${login_user.mail}">[email&#160;protected]</a></p>
                <a href="${ctx}/order/ordering/${order.id}" class="button margin-top-30 btn btn-info btn-xs">Voir la facture</a>            
                <a href="${ctx}/product/" class="button margin-top-30">retourner à la page d'accueil</a>
                <a href="${ctx}/order/" class="button margin-top-30">Afficher Mes Reservatinos</a>

            </div>

        </div>
    </div>
</div>
<!-- Container / End -->
  <%@include file="/common/footer-in.jsp" %>
  <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/78d64697/cloudflare-static/email-decode.min.js"></script><script type="text/javascript" src="scripts/jquery-2.2.0.min.js"></script>
  
  </body>
</html>
