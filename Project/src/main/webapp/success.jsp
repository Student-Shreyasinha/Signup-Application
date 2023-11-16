<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="backend.ConnectionDB,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eGrad-Portal</title>
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
 
    <div class="card-holder">
    
        <div class="card mb-3" style="max-width: 850px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="./images/eExam.jpg" class="img-fluid rounded" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">e-Examination</h5>
                        <p class="card-text">e-Exam is a convenient and secure platform for students to take
                            exams
                            online. It eliminates the need for
                            traditional in-person exams and provides an efficient and effective solution for
                            assessing student
                            knowledge. With e-Exam, students can take exams from the comfort of their own homes,
                            saving time and
                            reducing stress. It also allows for immediate grading and results, ensuring a more
                            streamlined and efficient
                            exam process.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 850px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="./images/OpenForum.jpg" class="img-fluid rounded" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">OpenForum</h5>
                        <p class="card-text">e-Forum is a virtual platform that enables users to engage in
                            online
                            discussions, share knowledge and
                            collaborate with each other. It offers a convenient way for individuals to connect
                            and
                            communicate with each
                            other regardless of their location. With e-Forum, users can participate in
                            discussions
                            on various topics,
                            exchange ideas and get feedback from a diverse group of people. Whether it's for
                            personal or professional
                            development, e-Forum provides a platform for users to expand their network and build
                            relationships with
                            like-minded individuals.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 850px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="./images/eRepository.jpeg" class="img-fluid rounded" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">e-Repository</h5>
                        <p class="card-text">e-Repository is a digital library that provides access to a vast
                            collection of educational resources,
                            including articles, books, research papers and multimedia content. It offers a
                            convenient way for students,
                            researchers, and educators to access and share information from anywhere at any
                            time.
                            With e-Repository,
                            users can easily search and retrieve relevant material for their studies, research
                            or
                            teaching needs. The
                            platform is regularly updated with the latest content and offers a user-friendly
                            interface for an effortless
                            and efficient browsing experience.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 850px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="./images/MyWall.png" class="img-fluid rounded" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">MyWall</h5>
                        <p class="card-text">The dashboard is the central hub for all services provided by the
                            e-GRAD portal. It provides users with quick
                            access to the e-Exam, e-Forum, e-Repository and MyWall services, allowing them to
                            easily
                            navigate between
                            the different services and access the information they need. The dashboard is
                            designed
                            with user convenience
                            in mind, and its intuitive interface makes it easy for users to access the services
                            they
                            need. With the
                            dashboard, users can efficiently and effectively manage their e-GRAD portal
                            experience
                            and make the most of
                            the platform's offerings.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li>Address: At/Po: Patia, BBSR, Khurda, 751024</li>
        </ul>
        <p>Copyright &copy; e-Grad Portal 2023</p>
    </footer>
    <script src="./script/home.js"></script>

</body>
</html>