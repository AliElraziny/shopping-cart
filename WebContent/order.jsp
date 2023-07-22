

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  
    import="com.trycoding.connection.DbCon"
    import="com.trycoding.model.*"
    import="java.util.*"
    %>
    
    <% User auth = (User) request.getSession().getAttribute("auth");
    	if(auth != null){
    		
    		request.setAttribute("auth", auth);
    	}
    	
    	ArrayList<Cart> cart_list =(ArrayList<Cart>) session.getAttribute("cart-list");
    	
    	if(cart_list != null){

    		request.setAttribute("cart-list", cart_list);
    	}
    
    %>
    
<!DOCTYPE html >
<html >
<head>
<title>Order Page</title>
<%@include file="includes/head.jsp"  %>
</head>
<body>
	<%@include file="includes/navbar.jsp"  %>
	<h1>try coding </h1>
	
	
	<%@include file="includes/footer.jsp"  %>
</body>
</html>