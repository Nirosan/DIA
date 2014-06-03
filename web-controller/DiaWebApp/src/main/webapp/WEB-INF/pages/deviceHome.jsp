<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap/bootstrap-clockpicker.min.css">



</head>
<body style="margin-top:60px">

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!-- Fixed navbar -->
<div id="dic_bubble" class="selection_bubble fontSize13 noSelect"
     style="z-index: 9999; border: 1px solid rgb(74, 174, 222); visibility: hidden;"></div>
<div class="navbar navbar-default navbar-inverse  navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">YIT DIA</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="#"><c:out value="${sessionScope.gardenName}"/></a></li>
                            <li class="active"><a href="${contextPath}/signOut">Sign Out</a></li>
            </ul>
        </div>

    </div>
</div>
<!-- /Fixed navbar -->

<br/>
<br/>

<div class="container">



<!-- /container -->
<a href="index.html"></a>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->




<div class="row">

<div class="panel panel-success col-sm-6">
  <div class="panel-heading">Current Status</div>
  <div class="panel-body">
      <div class="col-sm-4">Device Status </div>


  <button class="btn btn-default col-sm-offset-5" id="myToggleButton">ON</button>



  <br/><br/>
  <div class="col-sm-4">Water follow</div>


  <button class="btn btn-default col-sm-offset-5" id="myToggleButton">ON</button>
  <br/><br/>

      <div class="col-sm-4">
          Mode
      </div>
      <div class="col-sm-4 col-sm-offset-4">
      <div class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Normal Mode <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Normal Mode</a></li>
                        <li><a href="#">Alert Mode</a></li>
                        <li><a href="#">Intelligent mode</a></li>

                    </ul>
                </div>
      </div>

  </div>
</div>

<div class="panel panel-default col-sm-4 col-sm-offset-1">
  <div class="panel-heading">
    <h3 class="panel-title">Status Report</h3>
  </div>
  <div class="panel-body">
    Temprature    32C<br/><br/>
    Moisture      52%<br/><br/>
    weather       Possiblity of raining<br/><br/>

  </div>
</div>


</div>
<div class="row">
<div class="panel panel-default col-sm-11">
  <div class="panel-heading">
    <h3 class="panel-title">Status Report</h3>
  </div>
  <div class="panel-body">
<div class="row">
              <div class="col-sm-4 col-sm-offset-1">
                  Start time :
              </div>

              <div class="col-sm-4 col-sm-offset-0">
                  <div class="form-group ">
		<div class="input-group clockpicker">
			<input type="text" class="form-control" value="09:30">
			<span class="input-group-addon">
				<span class="glyphicon glyphicon-time"></span>
			</span>
		</div>
	</div>
              </div>
              <div class="col-sm-4 col-sm-offset-1">
                  End time :
              </div>
              <div class="col-sm-4 col-sm-offset-0">
                    	<div class="form-group ">
		<div class="input-group clockpicker">
			<input type="text" class="form-control" value="09:30">
			<span class="input-group-addon">
				<span class="glyphicon glyphicon-time"></span>
			</span>
		</div>
	</div>
              </div>



          </div>
  </div>
</div>
</div>


</div>



<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="resources/js/bootstrap/jquery-1.11.js"></script>
<script type="text/javascript" src="resources/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap/bootstrap-clockpicker.min.js"></script>
<script type="text/javascript">
$('.clockpicker').clockpicker()
	.find('input').change(function(){
		console.log(this.value);
	});
var input = $('#single-input').clockpicker({
	placement: 'bottom',
	align: 'left',
	autoclose: true,
	'default': 'now'
});

// Manually toggle to the minutes view
$('#check-minutes').click(function(e){
	// Have to stop propagation here
	e.stopPropagation();
	input.clockpicker('show')
			.clockpicker('toggleView', 'minutes');
});
if (/mobile/i.test(navigator.userAgent)) {
	$('input').prop('readOnly', true);
}
</script>
<script type="text/javascript">
var button = $('#myToggleButton');
button.on('click', function () {
  $(this).toggleClass('active');
});
</script>
</body>
</html>