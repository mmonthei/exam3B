<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="includes/style.css">
        <title>Customer Information Center</title>
    </head>
    <body>
        <div class="wrap"> <!--div to hold all other divs -->
        
        <!-- Header -->
        <%@include file="includes/header.jsp" %>

        <!-- Menu -->
        <%@include file="includes/menu.jsp" %>
        
        <!-- Search -->
        <%@include file="includes/search.jsp" %>
                    
        <div class="main"> <!-- main div -->
            
            <h1>Customer Information Center</h1>
                     
        <a href="read">View All Customers</a>

        </div> <!-- close main div -->
    
        <!-- Footer -->
        <%@include file="includes/footer.jsp" %>
        
        </div> <!-- close the wrap div --> 
        
    </body>
</html>
