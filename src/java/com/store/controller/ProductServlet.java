package com.store.controller;

import com.store.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Product> products = new ArrayList<>();
        products.add(new Product(1, "ASUS ROG Strix G16", "Gaming Laptops", 1399.99, "Intel i7-13650HX, RTX 4060, 16GB DDR5"));
        products.add(new Product(2, "HP Victus 16", "Gaming Laptops", 1049.99, "AMD Ryzen 7, RTX 4050, 512GB SSD"));
        products.add(new Product(3, "NVIDIA RTX 4080 Super", "Components", 999.99, "16GB GDDR6X Graphics Card"));
        products.add(new Product(4, "Custom Watercooled PC", "Prebuilt Desktops", 2499.99, "Intel i9-14900K, RTX 4090, 64GB RAM"));

        request.setAttribute("products", products);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}