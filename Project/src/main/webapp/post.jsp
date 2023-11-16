<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="backend.ConnectionDB,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Posts</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">e-Grad Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./eExam.jsp">eExam</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./OpenForum.jsp">OpenForum</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./box.jsp">eRepository</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./mywall.jsp">myWall</a>
                    </li>

                </ul>
                <form class="d-flex col-md-2" id="nav-search" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit"><i class="fa fa-search"></i></button>
                </form>
                <h2><%  
		                String fullname = (String)session.getAttribute("fullname");
		                out.print(fullname);
                %></h2>
            </div>
        </div>
    </nav>
    <div class="container">
        <h1>View Posts</h1>
        <hr>
        <div class="card mb-3">
        	<div class="card-body">
            	<p class="card-text">
            		<%
            			ConnectionDB confi = new ConnectionDB();
        	 			int userid = (int)session.getAttribute("userid");
        	    		String Query="select * from comments where userid != ?";
        	    		PreparedStatement pst;
    					ResultSet rs;
    					try {
    						pst=confi.Connect().prepareStatement(Query);
    						pst.setInt(1,userid);
    						rs=pst.executeQuery();
    						while(rs.next()){
    							String postid = rs.getString(2);
    							out.print(rs.getString(2)+". "+rs.getString(3)+"(from "+rs.getString(1)+")");
    							%>
    							<br>
    							<a href="reply.jsp?userid=<%=rs.getString(1)%>&postid=<%=postid%>">  Reply</a>
    							<br>
    							<%
    							out.println("<br>");
    						}
    					}
    					catch (Exception e){
    						out.print(e);	
    					}  %>
    			</p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>