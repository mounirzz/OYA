<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Détails de la commande</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/product.css"/>
      <style type="text/css">
.carousel-inner {
  position: relative;
  width: 100%;
  min-height: 300px;
  }
 
 .carousel-control.right {
  right: 0;
  left: auto;
  background-image: none !important;
  background-repeat: repeat-x;
}
 .carousel-control.left {
  left: 0;
  right: auto;
  background-image: none !important;
  background-repeat: repeat-x;
}
#carousel-example-generic {
    margin: 20px auto;
    width: 100%;
}

#carousel-custom {
    margin: 20px auto;
    width: 700px;
}
#carousel-custom .carousel-indicators {
    margin: 10px 0 0;
    overflow: auto;
    position: static;
    text-align: left;
    white-space: nowrap;
    width: 100%;
    overflow:hidden;
}
#carousel-custom .carousel-indicators li {
    background-color: transparent;
    -webkit-border-radius: 0;
    border-radius: 0;
    display: inline-block;
    height: auto;
    margin: 0 !important;
    width: auto;
}
#carousel-custom .carousel-indicators li img {
    display: block;
    opacity: 0.5;
}
#carousel-custom .carousel-indicators li.active img {
    opacity: 1;
}
#carousel-custom .carousel-indicators li:hover img {
    opacity: 0.75;
}
#carousel-custom .carousel-outer {
    position: relative;
}
.carousel-indicators li img {
  height: 66px;
  width: 88px;}
</style>
</head>

<body>
<%@include file="/common/admin-admin-nav.jsp" %>


<!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2 style="color:#fff">Annonces</h2><span style="color:#fff">Nos annonces de Voitures de collection à vendre avec photo</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul style="color:#fff">
						<li><a href="#">Accueil</a></li>
						<li>Annonces</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row sticky-wrapper">
		<div class="col-lg-8 col-md-8 padding-right-30">
			<div id="titlebar" class="listing-titlebar">
				<div class="listing-titlebar-title">
					<h2>${product.title}<span class="listing-tag">${product.model}</span></h2>
					<span>
						<a href="#listing-location" class="listing-address">
							<i class="fa fa-map-marker"></i>
							${product.point}
						</a>
					</span>
					<img class="img-responsive img-rounded" src="${ctx}${product.masterPic.url}">
					
<div class=" col-sm-4 col-xs-4">
<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
    <div class='carousel-outer'>
        <!-- me art lab slider -->
        <div class='carousel-inner '>
            <div class='item active'>
                <img src='/images/product/car15598/Ford-Mustang-1965-1.jpg' alt='' style=" width: 652.051px !important; height: 413.34px !important; "  id="zoom_05" width="700" height="200"   data-zoom-image="http://images.asos-media.com/inv/media/8/2/3/3/5313328/print/image1xxl.jpg"/>
            </div>
            <div class='item'  id="zoom_05">
                <img src='/images/product/car15598/Ford-Mustang-1965-10.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-10.jpg" />
            </div>
            <div class='item'>
                              <img src='/images/product/car15598/Ford-Mustang-1965-100.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-100.jpg" />

            </div>
                
            <div class='item'>
         <img src='/images/product/car15598/Ford-Mustang-1965-11.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-11.jpg" />

            </div>
            <div class='item'>
          <img src='/images/product/car15598/Ford-Mustang-1965-12.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-12.jpg" />

            </div>
            <div class='item'>
           <img src='/images/product/car15598/Ford-Mustang-1965-13.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-13.jpg" />

            </div>
            <div class='item'>
          <img src='/images/product/car15598/Ford-Mustang-1965-14.jpg' alt='' style=" width: 652.051px !important;height: 413.34px !important;" data-zoom-image="/images/product/car15598/Ford-Mustang-1965-14.jpg" />

            </div>
            <script>
  $("#zoom_05").elevateZoom({ zoomType    : "inner", cursor: "crosshair" });
</script>
        </div>
            
        <!-- sag sol -->
        <a class='left carousel-control' href='#carousel-custom' data-slide='prev'>
            <span class='glyphicon glyphicon-chevron-left'></span>
        </a>
        <a class='right carousel-control' href='#carousel-custom' data-slide='next'>
            <span class='glyphicon glyphicon-chevron-right'></span>
        </a>
    </div>
    
    <!-- thumb -->
    <ol class='carousel-indicators mCustomScrollbar meartlab'>
        <li data-target='#carousel-custom' data-slide-to='0' class='active'><img src='/images/product/car15598/Ford-Mustang-1965-1.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='1'><img src='/images/product/car15598/Ford-Mustang-1965-10.jpg' alt=''  /></li>
        <li data-target='#carousel-custom' data-slide-to='2'><img src='/images/product/car15598/Ford-Mustang-1965-100.jpg' alt=''  /></li>
        <li data-target='#carousel-custom' data-slide-to='3'><img src='/images/product/car15598/Ford-Mustang-1965-11.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='4'><img src='/images/product/car15598/Ford-Mustang-1965-12.jpg' alt=''  /></li>
        <li data-target='#carousel-custom' data-slide-to='5'><img src='/images/product/car15598/Ford-Mustang-1965-13.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='6'><img src='/images/product/car15598/Ford-Mustang-1965-14.jpg' alt=''  /></li>

    </ol>
</div>

<script type="text/javascript">

$(document).ready(function() {
    $(".mCustomScrollbar").mCustomScrollbar({axis:"x"});
});
</script>

</div>
				

					
				</div>
			</div>

			
			<!-- Overview -->
			<div id="listing-overview" class="listing-section">

				<!-- Description -->

				<p>
					${product.note}
				</p>

				<p>
					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra.
				</p>

				<!-- Amenities -->
				<h3 class="listing-desc-headline">${product.code}</h3>
				<ul class="listing-features checkboxes margin-top-0">
					<li>Elevator in building</li>
					<li>Friendly workspace</li>
					<li>Instant Book</li>
					<li>Wireless Internet</li>
					<li>Free parking on premises</li>
					<li>Free parking on street</li>
				</ul>
					<!-- Share Buttons -->
					<ul class="share-buttons margin-top-40 margin-bottom-0">
						<li> <a class="fb-share addCart" productid="${product.id}" role="button" href="${ctx}/cart/" >CREER UNE ALERTE</a>  </li>
						<li><a class="twitter-share" href="#">CONTACTEZ-NOUS</a></li>
					</ul>
			</div>
	


		
			<!-- Location -->
			<div id="listing-location" class="listing-section">
				<h3 class="listing-desc-headline margin-top-60 margin-bottom-30">Location</h3>

				<div id="singleListingMap-container">
					<div id="singleListingMap" data-latitude="40.70437865245596" data-longitude="-73.98674011230469" data-map-icon="im im-icon-Hamburger"></div>
					<a href="#" id="streetView">Street View</a>
				</div>
			</div>

			<!-- Add Review Box -->
			<div id="add-review" class="add-review-box">

				<!-- Add Review -->
				<h3 class="listing-desc-headline margin-bottom-20">Add Review</h3>
				
				<span class="leave-rating-title">Your rating for this listing</span>
				
				<!-- Rating / Upload Button -->
				<div class="row">
					<div class="col-md-6">
						<!-- Leave Rating -->
						<div class="clearfix"></div>
						<div class="leave-rating margin-bottom-30">
							<input type="radio" name="rating" id="rating-1" value="1"/>
							<label for="rating-1" class="fa fa-star"></label>
							<input type="radio" name="rating" id="rating-2" value="2"/>
							<label for="rating-2" class="fa fa-star"></label>
							<input type="radio" name="rating" id="rating-3" value="3"/>
							<label for="rating-3" class="fa fa-star"></label>
							<input type="radio" name="rating" id="rating-4" value="4"/>
							<label for="rating-4" class="fa fa-star"></label>
							<input type="radio" name="rating" id="rating-5" value="5"/>
							<label for="rating-5" class="fa fa-star"></label>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="col-md-6">
						<!-- Uplaod Photos -->
						<div class="add-review-photos margin-bottom-30">
							<div class="photoUpload">
							    <span><i class="sl sl-icon-arrow-up-circle"></i> Upload Photos</span>
							    <input type="file" class="upload" />
							</div>
						</div>
					</div>
				</div>
	
				<!-- Review Comment -->
				<form id="add-comment" class="add-comment">
					<fieldset>

						<div class="row">
							<div class="col-md-6">
								<label>Name:</label>
								<input type="text" value=""/>
							</div>
								
							<div class="col-md-6">
								<label>Email:</label>
								<input type="text" value=""/>
							</div>
						</div>

						<div>
							<label>Review:</label>
							<textarea cols="40" rows="3"></textarea>
						</div>

					</fieldset>

					<button class="button">Submit Review</button>
					<div class="clearfix"></div>
				</form>

			</div>
			<!-- Add Review Box / End -->


		</div>


		<!-- Sidebar
		================================================== -->
		<div class="col-lg-4 col-md-4 margin-top-75 sticky">


			<div class="boxed-widget opening-hours summary margin-top-0">
				<h3><i class="fa fa-calendar-check-o"></i> Données techniques</h3>
				<ul>
					<li>Km :<span>50 000</span></li>
					<li>Référence annonce : <span>AFLKKO5668</span></li>
					<li>Type : <span>Sportive</span></li>
					<li class="total-costs">Prix <span>50 000 euro</span></li>
				</ul>

			</div>

			<!-- Contact -->
			<div class="boxed-widget margin-top-35">
				<div class="hosted-by-title">
					<h4><span>hébergé par</span> <a href="pages-user-profile.html"> ${login_admin.username}</a></h4>
					<a href="pages-user-profile.html" class="hosted-by-avatar"><img src="images/dashboard-avatar.jpg" alt=""></a>
				</div>
				<ul class="listing-details-sidebar">
					<li><i class="fa fa-phone"></i> +33 66 55 84 XX</li>
					<!-- <li><i class="sl sl-icon-globe"></i> <a href="#">http://example.com</a></li> -->
					<li><i class="fa fa-envelope-o"></i> <a href="#"><span class="__cf_email__" >Autocar@Atriem.fr</span></a></li>
				</ul>

				<ul class="listing-details-sidebar social-profiles">
					<li><a href="#" class="facebook-profile"><i class="fa fa-facebook-square"></i> Facebook</a></li>
					<li><a href="#" class="twitter-profile"><i class="fa fa-twitter"></i> Twitter</a></li>
					<!-- <li><a href="#" class="gplus-profile"><i class="fa fa-google-plus"></i> Google Plus</a></li> -->
				</ul>

				<!-- Reply to review popup -->
				<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
					<div class="small-dialog-header">
						<h3>Ecrire un message au vendeur</h3>
					</div>
					<div class="message-reply margin-top-0">
						<textarea cols="40" rows="3" placeholder="Your message to Tom"></textarea>
						<button class="button">Ecrire un message au vendeur</button>
					</div>
				</div>

				<a href="#small-dialog" class="send-message-to-owner button popup-with-zoom-anim"><i class="fa fa-envelope-o"></i> Ecrire un message au vendeur</a>
			</div>
			<!-- Contact / End-->


			<!-- Share / Like -->
			<div class="listing-share margin-top-40 margin-bottom-40 no-border">
				<button class="like-button"><span class="like-icon"></span> Bookmark this listing</button> 
				<span>159 people bookmarked this place</span>

					<!-- Share Buttons -->
					<ul class="share-buttons margin-top-40 margin-bottom-0">
						<li><a class="fb-share" href="#"><i class="fa fa-facebook"></i> Share</a></li>
						<li><a class="twitter-share" href="#"><i class="fa fa-twitter"></i> Tweet</a></li>
						<li><a class="gplus-share" href="#"><i class="fa fa-google-plus"></i> Share</a></li>
						<!-- <li><a class="pinterest-share" href="#"><i class="fa fa-pinterest-p"></i> Pin</a></li> -->
					</ul>
					<div class="clearfix"></div>
			</div>

		</div>
		<!-- Sidebar / End -->

	</div>
</div>
<!-- /container -->
<%@include file="/common/footer.jsp" %>
<%@ include file="/common/include-base-js.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="${ctx }/js/product.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/elevatezoom/3.0.8/jquery.elevatezoom.js" type="text/javascript"></script>
</body>
</html>