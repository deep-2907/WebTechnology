<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
    /* Importing fonts from Google */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

/* Reseting */
* {
	background:white;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: light grey;
    min-height: 100vh;
}

body::-webkit-scrollbar {
    display: none;
}

.wrapper {
    max-width: 800px;
    margin: 80px auto;
    padding: 30px 45px;
    box-shadow: 5px 25px 35px #3535356b;
}

.wrapper label {
    display: block;
    padding-bottom: 0.2rem;
}

.wrapper .form .row {
    padding: 0.6rem 0;
}

.wrapper .form .row .form-control {
    box-shadow: none;
}

.wrapper .form .option {
    position: relative;
    padding-left: 20px;
    cursor: pointer;
}


.wrapper .form .option input {
    opacity: 0;
}

.wrapper .form .checkmark {
    position: absolute;
    top: 1px;
    left: 0;
    height: 20px;
    width: 20px;
    border: 1px solid #bbb;
    border-radius: 50%;
}

.wrapper .form .option input:checked~.checkmark:after {
    display: block;
}

.wrapper .form .option:hover .checkmark {
    background: #f3f3f3;
}

.wrapper .form .option .checkmark:after {
    content: "";
    width: 10px;
    height: 10px;
    display: block;
    background: linear-gradient(45deg, #ce1e53, #8f00c7);
    position: absolute;
    top: 50%;
    left: 50%;
    border-radius: 50%;
    transform: translate(-50%, -50%) scale(0);
    transition: 300ms ease-in-out 0s;
}

.wrapper .form .option input[type="radio"]:checked~.checkmark {
    background: #fff;
    transition: 300ms ease-in-out 0s;
}

.wrapper .form .option input[type="radio"]:checked~.checkmark:after {
    transform: translate(-50%, -50%) scale(1);
}

#sub {
    display: block;
    width: 100%;
    border: 1px solid #ddd;
    padding: 10px;
    border-radius: 5px;
    color: #333;
}

#sub:focus {
    outline: none;
}

@media(max-width: 768.5px) {
    .wrapper {
        margin: 30px;
    }

    .wrapper .form .row {
        padding: 0;
    }
}

@media(max-width: 400px) {
    .wrapper {
        padding: 25px;
        margin: 20px;
    }
}
    </style>
</head>
<body>

<div class="wrapper rounded bg-white">

        <div class="h3"> Student Registration Form</div>

        <div class="form">
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>First Name</label>
                    <input type="text" class="form-control" required>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Last Name</label>
                    <input type="text" class="form-control" required>
                </div>
            </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Gender</label>
                    <div class="d-flex align-items-center mt-2">
                        <label class="option">
                            <input type="radio" name="radio">Male
                            <span class="checkmark"></span>
                        </label>
                        <label class="option ms-4">
                            <input type="radio" name="radio">Female
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Email</label>
                    <input type="email" class="form-control" required>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Phone Number</label>
                    <input type="tel" class="form-control" required>
                </div>

 <label>Last Name</label>
<input type="password" name="password" required><br>
           
         <input type="submit" name="button">
 
    </div>
</body>
</html>