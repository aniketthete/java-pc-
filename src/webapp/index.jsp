<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Next-Gen Tech Store</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #121212; color: #fff; margin: 0; padding: 20px; }
        h1 { text-align: center; color: #00d4ff; }
        .grid { display: flex; flex-wrap: wrap; gap: 20px; justify-content: center; }
        .card { background-color: #1e1e1e; border: 1px solid #333; border-radius: 8px; width: 280px; padding: 15px; box-shadow: 0 4px 6px rgba(0,0,0,0.3); }
        .card h3 { color: #00ff88; margin-top: 0; }
        .category { background: #333; font-size: 12px; padding: 3px 8px; border-radius: 4px; display: inline-block; }
        .price { font-size: 18px; font-weight: bold; color: #ff0055; margin: 10px 0; }
        .btn { display: block; width: 100%; text-align: center; background: #00d4ff; color: #000; font-weight: bold; padding: 10px 0; text-decoration: none; border-radius: 4px; }
    </style>
</head>
<body>

    <h1>🎮 Next-Gen Tech Store</h1>

    <div class="grid">
        <c:forEach var="product" items="${products}">
            <div class="card">
                <span class="category">${product.category}</span>
                <h3>${product.name}</h3>
                <p>${product.description}</p>
                <div class="price">$${product.price}</div>
                <a href="#" class="btn">Buy Now</a>
            </div>
        </c:forEach>
    </div>

</body>
</html>