<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="includes/style.css">
        <title>Customer Information Center</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <div class="wrap"> <!--div to hold all other divs -->
        
        <!-- Header -->
        <%@include file="includes/header.jsp" %>

        <!-- Menu -->
        <%@include file="includes/menu.jsp" %>
    
            
        <div class="main"> <!-- main div -->
            
            <form name="searchForm" action="search" method="get">
        
            <b> Search for customer by entering first or last name. </b>
            <br><br>

            <input type="text" name="searchVal" value="" />

            <input type="submit" name="submit" value="Search" />
            <input type="reset" value="Clear" id="clear">
            
            </form>

        </div> <!-- close main div -->
    
        <!-- Footer -->
        <%@include file="includes/footer.jsp" %>
        
        </div> <!-- close the wrap div --> 
        
    </body>
</html>
