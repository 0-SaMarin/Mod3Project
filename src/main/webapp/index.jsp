<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>

    <head>
       <link rel="stylesheet" type="text/css" href="/Mod3Project/css/indexStyles.css">
       <script>
            function validateForm(event) {
                var name = document.forms["playerForm"]["username"].value.trim();
                var age = document.forms["playerForm"]["age"].value.trim();

                if (name === "") {
                    alert("Please enter your name.");
                    event.preventDefault(); // stops form submission
                    return false;
                }

                if (age === "" || isNaN(age) || age <= 0) {
                    alert("Please enter a valid age.");
                    event.preventDefault();
                    return false;
                }

                //Form is valid
                return true;
            }
       </script>
    </head>

<body>
    <h1>Welcome to the labyrinth, java-runner</h1>

    <p  style = "font-size: 21px;">
    You wake up in a field, you can barely remember who you are.
    but you seem to remember your name and your age.
    </p>

    <h2>What is your name and age?</h2>
    <form name="playerForm" action="/Mod3Project/jsp/game.jsp" method="post" onsubmit="return validateForm(event)">
        Name: <input type="text" name="username" /><br/><br/>
        Age: <input type="number" name="age" /><br/><br/>
        <input type="submit" value="Start" />
    </form>
</body>
</html>
