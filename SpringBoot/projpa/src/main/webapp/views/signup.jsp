<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <style>@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap');
    /* <link rel="stylesheet" type="text/css" href="./css/signup.css"/> */
    body{
            margin: 0px;
            padding: 0px;
            background-image: linear-gradient(to right, #725A38, #1F12A4);
        }

        .container{
            margin: auto;
            margin-top: 8vh;
            margin-bottom: 10vh;
            width: 55vw;
            height: fit-content;
        }
        form#signupform{
            margin: auto;
            width: 36vw;
            height: fit-content;
            font-family: 'Source Sans Pro', sans-serif;
            text-align: center;
            color: whitesmoke;
            font-size: 28px;
            border: 1px black solid;
            border-radius: 4px;
            box-shadow: -4px 8px 12px black;
            background: #081e1e;
        }
        p#signup{
            color: grey;
            font-size: 40px;
            font-family: sans-serif;
        }
        p > img{
            padding-bottom: 25px;
            width: 100px;
        }
        form > div.box{
            margin: auto;
            margin-top: 7vh;
            margin-bottom: 30vh;
            height: 50vh;
        }
        input[type=text],input[type=password]{
            margin: 7px;
            width: 30vw;
            border: none;
            outline: none;
            border-bottom: 1px solid skyblue;
            color: ghostwhite;
            font-size: 20px;
            background: #081e1e;
        }
        input[type=text]:focus{
            transition: .4s;
            border-bottom: 3px solid deepskyblue;
        }
        p#login{
            font-size: 15px;
            font-family: sans-serif;
        }
        button{
            width:15vw;
            padding: 15px;
            margin-top: 40px;
            margin-bottom: 17px;
            font-size: 22px;
            color: grey;
            background: #081e1e;
            border: 1px deepskyblue solid;
        }

        button:hover{
            cursor: pointer;
            color: deepskyblue;
            transition: color .5s;
        }
        a{
            text-decoration: none;
            color: grey;
        }
        a:hover{
            cursor: pointer;
            color: deepskyblue;
            transition: color .5s;
        }
        a:visited, button:visited{
            color: green;
        }
    </style>
    <link rel="shortcut icon" type="image/x-icon" href="./assets/favicon.ico"/>
	<title>Sign up</title>
</head>
<body>
    <main>
        <div class="container">
            <form id="signupform" action="formProcess" method="POST">
                <div class="box">
                    <p id="signup"><b>Sign Up</b></p>
                    <%-- <p>${msg}
                    </p> --%>
                    <p><img src="./assets/user.png"></p>
                    <ion-icon name="person-outline"></ion-icon>&nbsp;
                    <input type="text" name="name" placeholder="Enter your full name">
                    <br><br>
                    <ion-icon name="finger-print-outline"></ion-icon>&nbsp;
                    <input type="text" name="username" placeholder="Enter your Username">
                    <br><br>
                    <ion-icon name="lock-closed-outline"></ion-icon>&nbsp;
                    <input type="password" name="password" placeholder="Enter your Password"><br><br>
                    <button id="signup" type="submit"><b>SignUp</b></button>
                    <p id="login">
                        You have an account?
                         <a href="login">
                            <strong> LogIn here</strong>
                        </a>
                    </p>
                </div>
            </form>

        </div>
    </main>
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js">	
	 </script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js">
	</script>

</body>
</html>