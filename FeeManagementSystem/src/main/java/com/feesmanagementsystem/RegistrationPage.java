package com.feesmanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet("/Registration")
public class RegistrationPage  extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
	{
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String mobileno =req.getParameter("mobileno");
		String dob = req.getParameter("dob");
		String password = req.getParameter("password");
		String con_password = req.getParameter("con_password");
		String gender = req.getParameter("gender");
		
		
		
		RequestDispatcher dis= null;
		PrintWriter pw= resp.getWriter();

		//Password validation
		
		if(!password.equals(con_password))
		{
			pw.print("Password or Confirm Password Does not Match.");
			return;
		}
		
		//Mobile no. validation
//		if(mobileno.length() !=10)
//		{
//			pw.print("Mobile no. must be 10 digit.");
//			return;
//		}
//		
		
		 
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feesmanagementsystem","root","root");
			PreparedStatement ps=con.prepareStatement("insert into users(firstname, lastname, email, mobileno, dob, password, gender) values(?,?,?,?,?,?,?)");
			
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, mobileno);
			ps.setString(5, dob);
			ps.setString(6, password);
			ps.setString(7, gender);
			
			int rowcount=ps.executeUpdate();
			dis = req.getRequestDispatcher("Registration.jsp");
			if(rowcount > 0)
			{
				req.setAttribute("status", "success");
			}
			else
			{
				req.setAttribute("status", "failed");
			}
			
			dis.forward(req, resp);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
