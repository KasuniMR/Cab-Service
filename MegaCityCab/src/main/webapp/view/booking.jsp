<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Booking</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bookingstyle.css">
</head>
<body>
    <header>
        <h1>Vehicle <span class="highlight">Categories</span></h1>
        <p>Choose from a wide range of luxury and economy cars available for booking.</p>
    </header>
    
    <section class="car-list">
        <%-- Car Listings --%>
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car1.jpg" alt="Tesla Model S Plaid">
            <h2>Tesla Model S Plaid</h2>
            <p class="price">$170.00/Day</p>
            <a href="AddToCartServlet?carId=1&price=170"><button>Book Now</button></a>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car2.jpg" alt="Hyundai Kona Electric">
            <h2>Hyundai Kona Electric</h2>
            <p class="price">$187.00/Day</p>
            <a href="AddToCartServlet?carId=2&price=187"><button>Book Now</button></a>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car3.jpg" alt="Mercedes Benz R3">
            <h2>Mercedes Benz R3</h2>
            <p class="price">$99.00/Day</p>
            <a href="AddToCartServlet?carId=3&price=99"><button>Book Now</button></a>
        </div>
    </section>

    <hr>

    <section class="cart-display">
        <h2>Your Cart</h2>
        <%
            Map<String, String> cart = (Map<String, String>) session.getAttribute("cart");
            if (cart != null && !cart.isEmpty()) {
        %>
            <ul>
                <% for (Map.Entry<String, String> entry : cart.entrySet()) { %>
                    <li>Car ID: <%= entry.getKey() %>, Price: $<%= entry.getValue() %></li>
                <% } %>
            </ul>
        <% } else { %>
            <p>Your cart is empty.</p>
        <% } %>
    </section>
    
    <footer>
        <p>&copy; 2025 Car Rental</p>
    </footer>
</body>
</html>
