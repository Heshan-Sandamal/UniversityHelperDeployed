<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Post</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/blog-post.css" rel="stylesheet">
</head>
<body
	style="background: url('resources/images//Documenting-success.jpg') no-repeat center center fixed; background-size: 100%; -webkit-background-size: 100%;">
	<div class="container-fluid">
		<div class="col-md-1"></div>
		<div class="col-md-6">
			<h2>Add post Details</h2>
			<div class="well">
				<form role="form" action="AddPost" method="post">
					<h4>Post Title</h4>
					<input type="text" class="form-control" name="topic">
					<h4>Post Content</h4>
					<div class="form-group">
						<textarea class="form-control" rows="3" name="content"></textarea>
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>