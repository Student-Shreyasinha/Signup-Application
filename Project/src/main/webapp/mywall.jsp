<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="backend.ConnectionDB,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/profile.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
  </head>
  <body>
    <div class="profile-main">
        
    <div class="myWall-heading">
        <h1 class="heading">MyWall</h1>
    </div>
    <div class="profile-container">
      <div class="profile-picture">
        <img class="dp" src="https://picsum.photos/300/300" />
        <h2 text-transform="capitalize"><%String fullname = (String)session.getAttribute("fullname");out.print(fullname); %></h2>
      </div>
      <div class="profile-info">
        <div class="input-group mb-3">
          <span class="input-group-text"><i class="fa fa-address-card"></i>UserID:</span>
          <span class="form-control"><%int userid = (int)session.getAttribute("userid");out.print(userid); %></span>
        </div>

        <div class="input-group mb-3">
          <p class="input-group-text"><i class="fa fa-envelope"></i>Email:</p>
          <p class="form-control"><%String email = (String)session.getAttribute("email");out.print(email); %></p>
        </div>

        <div class="input-group mb-3">
          <p class="input-group-text"><i class="fa fa-plus-square"></i>Age:</p>
          <p class="form-control"><%int age = (int)session.getAttribute("age");out.print(age); %></p>
        </div>

        <div class="input-group mb-3">
          <p class="input-group-text">
            <i class="fa fa-venus-mars"></i>Gender:
          </p>
          <p class="form-control"><%String gender = (String)session.getAttribute("gender");out.print(gender); %></p>
        </div>

        <div class="input-group mb-3">
          <p class="input-group-text"><i class="fa fa-tasks"></i>Branch:</p>
          <p class="form-control"><%String branch = (String)session.getAttribute("branch");out.print(branch); %></p>
        </div>

        <div class="input-group mb-3">
          <p class="input-group-text"><i class="fa fa-code"></i>Skills:</p>
          <p class="form-control"><%String skill = (String)session.getAttribute("skill");out.print(skill); %></p>
        </div>
      </div>
    </div>

</div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

