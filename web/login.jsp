<html>
    <head>
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <style>
            body,h1 {font-family: "Oswald", sans-serif}
            body, html {height: 100%}
        </style>
    </head>
    <body>
            <div align="center" class="w3-display-middle">
                <h1 class="w3-jumbo w3-animate-top">Welcome</h1>
                <form name="loginForm" method="POST" action="j_security_check">
                    <p align="left"><input class="w3-input w3-border w3-hover-grey" type="text" name="j_username" required></p>
                    <p align="left"><input class="w3-input w3-border w3-hover-grey" type="password" name="j_password" required></p>
                    <p><input class="button" type="submit" value="Submit"/></p>
                </form>
            </div>
    </body>
</html>