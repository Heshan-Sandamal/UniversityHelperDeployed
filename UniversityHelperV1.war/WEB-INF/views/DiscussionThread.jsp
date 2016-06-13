<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>My Resume a Personal Category Flat Bootstrap Responsive
	Website Template | Home :: w3layouts</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Resume Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 













</script>
<!--mobile apps-->
<!--Custom Theme files-->
<link href="resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="resources/css/styleStudentProfile.css" type="text/css"
	rel="stylesheet" media="all">
<link rel="stylesheet" href="resources/css/swipebox.css">
<link rel="stylesheet" href="resources/css/searchBox.css">
<!--//Custom Theme files-->
<!--js-->
<script src="resources/js/jquery-1.11.1.min.js"></script>

<!-- //js -->
<!--web-fonts-->
<link
	href='//fonts.googleapis.com/css?family=Overlock:400,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--start-smooth-scrolling-->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			//event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!--banner-->


	<!--//banner-->
	<!--top-nav-->
	<div class="top-nav wow">
		<div class="container">
			<div class="navbar-header logo">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					Menu</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<div class="menu">
					<ul class="nav navbar">
						<li><a href="StudentHome" class="scroll">Home</a></li>
						<li><a href="SearchApartment" class="scroll">Search
								Apartment</a></li>
						<li><a href="MyApartments" class="scroll">My Apartments</a></li>
						<li><a href="DiscussionThread" class="scroll"><h3><b>Discussion
								Thread</b></h3></a></li>
						<li><a href=AddPost class="scroll">Add New post</a></li>
						<li><a href="ViewMyPosts" class="scroll">My posts</a></li>
						<li><a href="#skills" class="scroll">My Details</a></li>
						<li><a href="ViewStudents" class="scroll">Student Details</a></li>
						<li><a href="ApartmentLogOut" class="scroll">Log out</a></li>
						
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//top-nav-->

	<hr>



	<%@ page import="com.universityHelper.models.Post"%>
	<%@ page import="java.util.ArrayList"%>

	<%
		ArrayList<Post> postList = (ArrayList<Post>) request.getAttribute("postList");
		int i = 0;
	%>


	<div class="col-sm-1"></div>
	<!--center-->
	<div class="col-sm-8">
		<div id="custom-search-input">
		<div class="input-group col-md-4"><h4><b>Search Discussion Thread</b></h4></div>
			<div class="input-group col-md-8">
				<input type="text" class="  search-query form-control"
					placeholder="Search" /> <span class="input-group-btn">
					<button class="btn btn-danger" type="button">
						<span class=" glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
		</div>
		<hr>
		<%
			for (Post post : postList) {
		%>
		<div class="row" id="row<%=i++%>">
			<div class="card" z-default=30 z-hover=40 height="200px">
				<form action="ViewPostDetails" method="post">
					<a href="" onclick="parentNode.submit();return false;"><h2><%=post.getTopic()%></h2></a>
					<h6>
						by <a href="#"><%=post.getStudent().getStudentProfile().getUserName()%></a>
					</h6>
					<hr>
					<p><%=post.getContent()%></p>
					<hr>
					<p class="lead">

						<input type="hidden" name="postId" value="<%=post.getId()%>">
						<button class="btn btn-info">view More</button>
				</form>
				</p>
				<p class="pull-right">
					<span class="label label-default">keyword</span> <span
						class="label label-default">tag</span> <span
						class="label label-default">post</span>
				</p>
				<ul class="list-inline">
					<li><a href="#"><%=post.getDateTime().toString()%></a></li>
					<li><a href="#"><i class="glyphicon glyphicon-comment"></i>
							<%=post.getComments().size()%> Comments</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-share"></i>
							14 Shares</a></li>
				</ul>

			</div>
		</div>
		<%
			}
		%>

		<hr>
	</div>
	<!--/center-->


	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/card-depth.js"></script>
</body>
</html>