<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<!--<![endif]-->
<head>
<title>Urban Factory - Home</title>
<decorator:head />
<meta name="description" content="">
<meta name="keywords" content="">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-72.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-57.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<%-- <body <decorator:getProperty property="body.ng-app" writeEntireProperty="true"/>>

	<!--  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>/.nav-collapse
        </div>
    </div> -->

	<div class="container" style="padding-top: 60px">
		<!-- <div class="starter-template">
            <h1>Bootstrap starter template</h1>
            <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
        </div> -->

		<div class="body">
			<h1>Decorated body</h1>
			<decorator:body />
		</div>

	</div> --%>
	<!-- /.container -->
<body id="backtotop">

<div class="fullwidth clearfix">
	<div id="topcontainer" class="bodycontainer clearfix" data-uk-scrollspy="{cls:'uk-animation-fade', delay: 300, repeat: true}">
		
		<p><span class="fa fa-signal"></span></p>
		<h1><span>Urban Factory</span><br />is coming soon</h1>
		<p>It's almost ready to redefine the <span>fashion</span></p>
		
	</div>
</div>

<div class="arrow-separator arrow-white"></div>

<div class="fullwidth colour1 clearfix">
	<div id="countdown" class="bodycontainer clearfix" data-uk-scrollspy="{cls:'uk-animation-fade', delay: 300, repeat: true}">

		<div id="countdowncont" class="clearfix">
			<ul id="countscript">
				<li>
					<span class="days">00</span>
					<p>Days</p>
				</li>
				<li>
					<span class="hours">00</span>
					<p>Hours</p>
				</li>
				<li class="clearbox">
					<span class="minutes">00</span>
					<p>Minutes</p>
				</li>
				<li>
					<span class="seconds">00</span>
					<p>Seconds</p>
				</li>
			</ul>
		</div>
	
	</div>
</div>

<div class="arrow-separator arrow-theme"></div>

<div class="fullwidth colour2 clearfix">
	<div id="maincont" class="bodycontainer clearfix" data-uk-scrollspy="{cls:'uk-animation-fade', delay: 300, repeat: true}">

		<p>
		<strong>Lorem ipsum dolor</strong> sit amet, consectetur adipiscing elit. 
		<a title="" href="#">Donec quis enim nulla</a>. 
		Suspendisse posuere arcu ac eros iaculis egestas commodo risus tempus. Fusce placerat nulla nisi. Proin congue erat non orci adipiscing nec porttitor lacus egestas. <em>Donec venenatis</em>, risus et hendrerit ultrices, libero sem lacinia risus, ut convallis massa sapien nec libero. Suspendisse arcu orci, gravida nec aliquet ut, lacinia non nisl.</p>
        <h2>Sign up and we'll let you know when we launch</h2>
        <p>If you would like to receive <strong>news and special offers</strong> please send us your email address below:</p>
		<div id="signupform" class="sb-search clearfix">
			<form method="post" action="http://formspree.io/raj@urcloset.in" id="contact" class="clearfix">
				<input class="sb-search-input" placeholder="Enter email ..." type="text" value="">
				<input class="sb-search-submit" value="" type="submit">
				<button class="formbutton" type="submit"><span class="fa fa-search"></span></button>
			</form>
		</div>
	
	</div>
</div>

<div class="arrow-separator arrow-themelight"></div>

<div class="fullwidth colour3 clearfix">
	<div id="quotecont" class="bodycontainer clearfix" data-uk-scrollspy="{cls:'uk-animation-fade', delay: 300, repeat: true}">

        <div id="commentslider" class="owl-carousel">
            <div class="item">
                <p>"<strong>Lorem ipsum dolor</strong> sit amet, consectetur adipiscing elit. Donec quis enim nulla. <em>Suspendisse posuere</em> arcu ac eros iaculis egestas commodo risus tempus. Fusce placerat nulla nisi. Proin congue erat non orci adipiscing nec porttitor lacus egestas."</p>
            	<p class="author">- Andrew Smith</p>
            </div>
            <div class="item">
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Donec quis enim</strong> nulla. Suspendisse posuere arcu ac eros iaculis egestas commodo risus tempus. <em>Fusce placerat nulla nisi</em>."</p>
            	<p class="author">- Laura Roberts</p>
            </div>
            <div class="item">
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Donec quis enim</strong> nulla. Suspendisse posuere arcu ac eros iaculis egestas commodo risus tempus. <em>Fusce placerat</em> nulla nisi. Proin congue erat non orci adipiscing nec <strong>porttitor</strong> lacus egestas."</p>
            	<p class="author">- David Jones</p>
            </div>
        </div>
	
	</div>
</div>

<div class="arrow-separator arrow-grey"></div>

<div class="fullwidth clearfix">
	<div id="footercont" class="bodycontainer clearfix" data-uk-scrollspy="{cls:'uk-animation-fade', delay: 300, repeat: true}">

		<p class="backtotop"><a title="" href="#backtotop"><span class="fa fa-angle-double-up"></span></a></p>
		<div id="socialmedia" class="clearfix">
			<ul>
				<li><a title="" href="#" rel="external"><span class="fa fa-facebook"></span></a></li>
				<li><a title="" href="#" rel="external"><span class="fa fa-twitter"></span></a></li>
				<li><a title="" href="#" rel="external"><span class="fa fa-google-plus"></span></a></li>
				<li><a title="" href="#" rel="external"><span class="fa fa-linkedin"></span></a></li>
				<li><a title="" href="#" rel="external"><span class="fa fa-pinterest"></span></a></li>
			</ul>
		</div>
		<!-- <p>Free Responsive Website Template by <a title="download website templates" href="http://www.downloadwebsitetemplates.co.uk" rel="external">Download Website Templates</a> - Icons by <a title="" href="http://fortawesome.github.io/Font-Awesome/" rel="external">Font Awesome</a></p> -->
	</div>
</div>
   
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/countdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owlcarousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/uikit.scrollspy.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>