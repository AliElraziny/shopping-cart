
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
<title>Shopping Cart Login</title>
<meta charset="ISO-8859-1" />
<%@include file="includes/head.jsp"  %>
</head>
<body>

	<%@include file="includes/navbar.jsp"  %>
	
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-groub">
						<label>Email Address</label>
						<input type="email" class="form-control" name="login-email" placeholder="Enter your email" required />
					</div>
					<div class="form-groub">
						<label>Password</label>
						<input type="password" class="form-control" name="login-password" placeholder="Enter your Password" required />
					</div>
					<br>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button> 
					</div>
				</form>
			
			</div>
		
		</div>
	
	</div>
	
	<%@include file="includes/footer.jsp"  %>
</body>
</html>