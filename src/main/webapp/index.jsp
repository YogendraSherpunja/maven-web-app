<%@ page import="java.time.LocalTime" %>
<html>
<head>
    <title>Welcome everyone</title>
</head>
<body>
    <h1>
        <%
            // Get the current hour
            int hour = LocalTime.now().getHour();

            // Check if it's morning or afternoon and print the appropriate message
          //  if (hour < 12) {
                out.println("Good morning, Yogendra, Welcome to COMP367");
          //  } else {
          //      out.println("Good afternoon, Yogendra, Welcome to COMP367");
         //   }
        %>
    </h1>
</body>
</html>
