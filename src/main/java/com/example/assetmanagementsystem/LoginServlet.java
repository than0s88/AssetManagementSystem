package com.example.assetmanagementsystem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbservlet","root","");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            PreparedStatement pst = con.prepareStatement("SELECT username FROM users WHERE username=? and password=?");
            pst.setString(1,username);
            pst.setString(2,password);

            ResultSet rs = pst.executeQuery();

            if (rs.next()){

                System.out.printf("WORKING");
                response.sendRedirect("/dashboard");
            }else{

                System.out.println("NOT WORKING");
                getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
            }

        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }
}
