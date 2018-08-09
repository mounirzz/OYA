<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="/common/global.jsp" %>
    <title>Gestion des Projets  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
        <link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard.css"/>
<link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard_theme_arrows.css"/>
    <%@ include file="/common/include-base-style-man.jsp" %>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<%@ include file="/common/user-admin-nav-man.jsp" %>
 <%@ include file="/common/user-admin-nav-main-sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Form Wizard
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Forms</a></li>
        <li class="breadcrumb-item active">Form Wizard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">  
      <!-- Validation wizard -->
      <div class="box box-solid bg-dark">
        <div class="box-header with-border">
          <h3 class="box-title">Step wizard with validation</h3>
          <h6 class="box-subtitle">You can us the validation like what we did</h6>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        
 
        <!-- SmartWizard html -->
        <div id="smartwizard">
            <ul>
                <li><a href="#step-1">Step 1<br /><small>This is tab's description</small></a></li>
                <li><a href="#step-2">Step 2<br /><small>This is tab's description</small></a></li>
                <li><a href="#step-3">Step 3<br /><small>This is tab's description</small></a></li>
                <li><a href="#step-4">Step 4<br /><small>This is tab's description</small></a></li>
            </ul>

            <div>
                <div id="step-1" class="">
                    <form:form>
				<h6>Projet</h6>
				<section class="bg-hexagons-dark">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label > Categorie du Projet : <span class="danger">*</span> </label>
								<input type="text" name="categorie"  class="form-control required" > </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wlastName2"> Last Name : <span class="danger">*</span> </label>
								<input type="text" class="form-control required" id="wlastName2" name="lastName"> </div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="wemailAddress2"> Email Address : <span class="danger">*</span> </label>
								<input type="email" class="form-control required" id="wemailAddress2" name="emailAddress"> </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wphoneNumber2">Phone Number :</label>
								<input type="tel" class="form-control" id="wphoneNumber2"> </div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="wlocation2"> Select City : <span class="danger">*</span> </label>
								<select class="custom-select form-control required" id="wlocation2" name="location">
									<option value="">Select City</option>
									<option value="India">India</option>
									<option value="USA">USA</option>
									<option value="Dubai">Dubai</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Date of Birth :</label>
								<input type="date" class="form-control" id="wdate2"> </div>
						</div>
					</div>
				</section>
				</form:form>
				 </div>
                <div id="step-2" class="">
                    <form:form>
				<h6>Projet</h6>
				<section class="bg-hexagons-dark">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="jobTitle3">Company Name :</label>
								<input type="text" class="form-control required" id="jobTitle3">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="webUrl3">Company URL :</label>
								<input type="url" class="form-control required" id="webUrl3" name="webUrl3"> </div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="shortDescription3">Short Description :</label>
								<textarea name="shortDescription" id="shortDescription3" rows="6" class="form-control"></textarea>
							</div>
						</div>
					</div>
				</section>
				</form:form>
                </div>
                <div id="step-3" class="">
                   <h6>Projet</h6>
				<section class="bg-hexagons-dark">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="wint1">Interview For :</label>
								<input type="text" class="form-control required" id="wint1"> </div>
							<div class="form-group">
								<label for="wintType1">Interview Type :</label>
								<select class="custom-select form-control required" id="wintType1" data-placeholder="Type to search cities" name="wintType1">
									<option value="Banquet">Normal</option>
									<option value="Fund Raiser">Difficult</option>
									<option value="Dinner Party">Hard</option>
								</select>
							</div>
							<div class="form-group">
								<label for="wLocation1">Location :</label>
								<select class="custom-select form-control required" id="wLocation1" name="wlocation">
									<option value="">Select City</option>
									<option value="India">India</option>
									<option value="USA">USA</option>
									<option value="Dubai">Dubai</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wjobTitle4">Interview Date :</label>
								<input type="date" class="form-control required" id="wjobTitle4">
							</div>
							<div class="form-group">
								<label>Requirements :</label>
									<input name="group2" type="radio" id="radio_3" value="1">
									<label for="radio_3" class="block">Employee</label>
									<input name="group2" type="radio" id="radio_4" value="1">
									<label for="radio_4">Contract</label>
							</div>
						</div>
					</div>
				</section>
				</div>
				  <div id="step-4" class="">
       				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="behName3">Behaviour :</label>
								<input type="text" class="form-control required" id="behName3">
							</div>
							<div class="form-group">
								<label for="participants3">Confidance</label>
								<input type="text" class="form-control required" id="participants3">
							</div>
							<div class="form-group">
								<label for="participants4">Result</label>
								<select class="custom-select form-control required" id="participants4" name="location">
									<option value="">Select Result</option>
									<option value="Selected">Selected</option>
									<option value="Rejected">Rejected</option>
									<option value="Call Second-time">Call Second-time</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="decisions2">Comments</label>
								<textarea name="decisions" id="decisions2" rows="4" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>Rate Interviwer :</label>
								<div class="c-inputs-stacked">
									<input type="checkbox" id="checkbox_6">
									<label for="checkbox_6" class="block">1 star</label>
									<input type="checkbox" id="checkbox_7">
									<label for="checkbox_7" class="block">2 star</label>
									<input type="checkbox" id="checkbox_8">
									<label for="checkbox_8" class="block">3 star</label>
									<input type="checkbox" id="checkbox_9">
									<label for="checkbox_9" class="block">4 star</label>
									<input type="checkbox" id="checkbox_10">
									<label for="checkbox_10" class="block">5 star</label>
								</div>
							</div>
						</div>
					</div>
       				
       				</div>
            </div>
        </div>

        </div>
      </div>
      <!-- /.box -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  </div>
  <!-- /.content-wrapper -->

	
	<!-- jQuery 3 -->
	<script src="${ctx}/common/scripts/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script src="${ctx}/common/scripts/popper/dist/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="${ctx}/common/scripts/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="${ctx}/common/scripts/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="../../../assets/vendor_components/fastclick/lib/fastclick.js"></script>
	
	<!-- Crypto_Admin App -->
	<script src=${ctx}/common/js/template.js"></script>
	
	<!-- Crypto_Admin for demo purposes -->
	<script src="${ctx}/common/js/demo.js"></script>
   
   <!-- validate  -->
    <script src="${ctx}/common/scripts/jquery/dist/jquery.validate.min.js"></script>
	
    
    <script src="${ctx}/common/scripts/jquery/dist/jquery.smartWizard.js"></script>
    
    <!-- wizard  -->
    <script src="${ctx}/common/js/MySteps.js"></script>
		
</body>
</html>