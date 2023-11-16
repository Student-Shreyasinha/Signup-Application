<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup Form</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="./css/sign-up.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  <!-- <script src="./script/sign-up.js"></script> -->
</head>

<body>
  
  <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">e-Grad Portal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
            <a class="nav-link" href="#">OpenForum</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">eRepository</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">myWall</a>
          </li>

        </ul>
        <form class="d-flex col-md-2" id="nav-search" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit"><i class="fa fa-search"></i></button>
        </form>
        
        <a href="./Signin.jsp"><input class="btn btn-primary" type="button" value="LogIn"></a>
        
      </div>
    </div>
  </nav>
  <div class="container">
    <h1>Signup Form</h1>
    <form action="RegisterServlet" method="POST" onsubmit="handleSubmit(event)">
      <div class="mb-3">
        <label for="fullname" class="form-label">Full Name</label>
        <input type="text" class="form-control" id="fullname" name="fullname">
      </div>
      <div class="mb-3">
        <label for="userid" class="form-label">User ID</label>
        <input type="text" class="form-control" id="userid" name="userid">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password">
      </div>
      <div class="ageAndGender">

        <div class="mb-3 col-3">
          <label for="age" class="form-label">Age</label>
          <input type="number" class="form-control" id="age" name="age">
        </div>
        <div class="mb-3">
          <label for="gender" class="form-label">Gender</label>
          
          <div class="radio">
            <div class="form-check-inline">
              <input class="form-check-input" type="radio" id="male" name="gender" value="male" >
              <label class="form-check-label" for="male">
                Male
              </label>
            </div>
            <div class="form-check-inline">
              <input class="form-check-input" type="radio" id="female" name="gender" value="female" >
              <label class="form-check-label" for="female">
                Female
              </label>
            </div>
            <div class="form-check-inline">
              <input class="form-check-input" type="radio" id="others" name="gender" value="others">
              <label class="form-check-label" for="others">
                Others
              </label>
            </div>
          </div>
        </div>
      </div>
      <div class="mb-3">
        <label for="branch" class="form-label">Branch</label>
        <select class="form-select" id="branch" name="branch" >
          <option value="">Choose...</option>
          <option value="CSE">CSE</option>
          <option value="CST">CST</option>
          <option value="ECE">ECE</option>
          <option value="EEE">EEE</option>
        </select>
      </div>
      <div class="mb-3">
        <label for="tech-skills" class="form-label">Technical Skills</label>
        <div class="container-fluid radio">
          <div class="form-check-inline">
            <input class="form-check-input" type="checkbox" id="java" name="java" value="java">
            <label class="form-check-label" for="java">
              Java
            </label>
          </div>
          <div class="form-check-inline">
            <input class="form-check-input" type="checkbox" id="python" name="python" value="python">
            <label class="form-check-label" for="python">
              Python
            </label>
          </div>
          <div class="form-check-inline">
            <input class="form-check-input" type="checkbox" id="c" name="c" value="C">
            <label class="form-check-label" for="c">
              C
            </label>
          </div>
          <div class="form-check-inline">
            <input class="form-check-input" type="checkbox" id="jsp" name="jsp" value="jsp">
            <label class="form-check-label" for="jsp">
              JSP
            </label>
          </div>
        </div>
      </div>
      <div class="mb-3">
        <label for="resume" class="form-label">Resume</label>
        <input class="form-control" type="file" id="resume" name="resume">
      </div>
      <div class="signup-buttons">
        <button type="submit" class="btn btn-primary col-4">Sign-up</button>
        <button type="reset" class="btn btn-danger col-4">Reset</button>
      </div>
    </form>
  </div>
  
</body>

</html>