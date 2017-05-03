<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers" %>
<% Customers customer = (Customers) request.getAttribute("customer"); %>

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
            
            <h1>Update A Customer:</h1>
            
            <form name="updateForm" action="updateCustomer" method="get">
            
            <table class="update">
                
            <tr>
                    <td class="right">Customer ID:</td>
                    <td><input type="text" name="custID" value="<%= customer.getCustID() %>" readonly/></td>
            </tr>
            
            <tr>
                    <td class="right">First Name:</td>
                    <td><input type="text" name="firstName" value="<%= customer.getFirstName() %>" required data-validation-required-message="Please enter first name." /></td>
            </tr>
            
            <tr>
                    <td class="right">Last Name:</td>
                    <td><input type="text" name="lastName" value="<%= customer.getLastName() %>" required data-validation-required-message="Please enter last name." /></td>
            </tr>
            
            <tr>
                    <td class="right">Address 1:</td>
                    <td><input type="text" name="addr1" value="<%= customer.getAddr1() %>" required data-validation-required-message="Please enter address."/></td>
            </tr>
            
            <tr>
                    <td class="right">Address 2:</td>
                    <td><input type="text" name="addr2" value="<%= customer.getAddr2() %>" /></td>
            </tr>
            
            <tr>
                    <td class="right">City:</td>
                    <td><input type="text" name="city" value="<%= customer.getCity() %>" required data-validation-required-message="Please enter city."/></td>
            </tr>
            
            <tr>
                    <td class="right">State:</td>
                    <td><input type="text" name="custState" value="<%= customer.getCustState() %>" required data-validation-required-message="Please enter state (example: IA or CA)." pattern="[a-Z]{2}" /></td>
            </tr>
            
            <tr>
                    <td class="right">Zip:</td>
                    <td><input type="text" name="zip" value="<%= customer.getZip() %>" required data-validation-required-message="Please enter zip code." pattern="[0-9]{5,5}" /></td>
            </tr>
            
            <tr>
                    <td class="right">Email Address:</td>
                    <td><input type="email" name="emailAddr" value="<%= customer.getEmailAddr() %>" required data-validation-required-message="Please enter email address." /></td>
            </tr>
            
            </table>
            <input type="submit" name="submit" value="Update" />
            <input type="reset" value="Clear" id="clear">
        </form>

        </div> <!-- close main div -->
    
        <!-- Footer -->
        <%@include file="includes/footer.jsp" %>
        
        </div> <!-- close the wrap div --> 
        
    </body>
</html>