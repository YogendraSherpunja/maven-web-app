<%@ page import="java.time.LocalTime" %>
<html>
<head>
    <title>Welcome everyone</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>
        <%
            // Get the current hour
            int hour = LocalTime.now().getHour();

            // Check if it's morning or afternoon and print the appropriate message
            if (hour < 12) {
                out.println("Good morning, Yogendra, Welcome to COMP367");
            } else {
                out.println("Good afternoon, Yogendra, Welcome to COMP367");
            }
        %>
    </h1>
</body>
</html>