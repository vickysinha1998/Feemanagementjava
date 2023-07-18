package com.feesmanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginPage extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/feesmanagementsystem","root","root");
			PreparedStatement ps= con.prepareStatement("select * from users where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
				//create a session 
				HttpSession session= req.getSession();
				
				//sending the request to Home.jsp
				RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
				rd.forward(req, resp);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		pw.print("INCORRECT USERNAME OR PASSWORD..");
		RequestDispatcher rd = req.getRequestDispatcher("Index.jsp");
		rd.include(req, resp);
		
	}
	
	
}
