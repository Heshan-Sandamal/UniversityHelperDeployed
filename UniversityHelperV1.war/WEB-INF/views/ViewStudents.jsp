<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<link href="resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="resources/css/styleStudentProfile.css" type="text/css"
	rel="stylesheet" media="all">


<link rel="stylesheet" href="resources/css/materialDesignBlogCard.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
						<li><a href="DiscussionThread" class="scroll">Discussion
								Thread</a></li>
						<li><a href=AddPost class="scroll">Add New post</a></li>
						<li><a href="ViewMyPosts" class="scroll">My posts</a></li>
						<li><a href="#skills" class="scroll">My Details</a></li>
						<li><a href="ViewStudents" class="scroll"><h3>
									<b>Student Details</b>
								</h3></a></li>
						<li><a href="ApartmentLogOut" class="scroll">Log out</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">



		<%@ page import="com.universityHelper.models.Student"%>
		<%@ page import="java.util.ArrayList"%>

		<%
			ArrayList<Student> studentList = (ArrayList<Student>) request.getAttribute("studentList");
			int i = 0;
		%>
		<hr>
		<h2>
			All Students of
			<%=studentList.get(0).getCourse().getName()%>
			@
			<%=studentList.get(0).getCourse().getUniversity()%></h2>

		<div class="row">

			<%
				for (Student student : studentList) {
			%>
			<div class="col-md-3 col-xs-12">
				<div class="wrapper">

					<div class="card radius shadowDepth1">
						<div class="card__image border-tlr-radius">
							<img
								src="resources/uploads/student/<%=student.getStudentId()%>/profile/img1.jpg"
								height="230px" alt="image" class="border-tlr-radius">
						</div>

						<div class="card__content card__padding">
							<div class="card__share">
								<div class="card__social">
									<a class="share-icon facebook" href="<%=student.getFburl()%>" target="_blank"><span
										class="fa fa-facebook"></span></a> <a class="share-icon twitter"
										href="#"><span class="fa fa-twitter"></span></a> <a
										class="share-icon googleplus" href="#"><span
										class="fa fa-google-plus"></span></a>
								</div>

								<a id="share" class="share-toggle share-icon" href="#"></a>
							</div>

							<div class="card__meta">
								<form action="ViewStudentProfile" method="get">
									<input type="hidden" name="userName" value="<%=student.getStudentProfile().getUserName()%>">
									<a href="" onclick="parentNode.submit();return false;" ><h4
											style="font-family: Roboto; line-height: 1.6;"><%=student.getStudentProfile().getUserName()%></h4></a>
								</form>
								<h4 style="font-family: Roboto; line-height: 1.6;">
									I'm
									<%=student.getFirstName()%>
									<%=student.getLastName()%>
								</h4>
							</div>

							<article class="card__article">
							<h6>
								from
								<%=student.getHomeTown()%>
							</h6>

							<h6>
								Contact me
								<%=student.getContactNo()%>
							</h6>
							</article>
						</div>

					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
	</div>

</body>
<script type="text/javascript">
	$(document).ready(function($) {

		$('.card__share > a').on('click', function(e) {
			e.preventDefault() // prevent default action - hash doesn't appear in url
			$(this).parent().find('div').toggleClass('card__social--active');
			$(this).toggleClass('share-expanded');
		});

	});
</script>
</html>