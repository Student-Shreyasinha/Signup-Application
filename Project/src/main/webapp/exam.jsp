<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-QUIZ PROTAL</title>
    <link rel="stylesheet" href="css/custom.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>

<body>
    
    

<section class="main">
    <div class="timerContainer">
        <span>Time Remaining : </span><div id="timer"></div>
    </div>
        <div class="container">
            <div class="col">
                <h3 id="questionBox">
                    question
                </h3>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="first" value="a" required>
                <label for="first">Testing 1</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="second" value="b" required>
                <label for="second">Testing 2</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="third" value="c" required>
                <label for="third">Testing 3</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="fourth" value="d" required>
                <label for="fourth">Testing 4</label>
            </div>
            <button id="submit">Submit</button>
        </div>

    </section>
    <script src="script/app.js"></script>
</body>

</html>