package com.feesmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Addfees")
public class Addfees extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	{
		String recieptno= req.getParameter("recieptno");
		String school_college= req.getParameter("school_college");
		String studentname= req.getParameter("studentname");
		String session= req.getParameter("session");
		String department= req.getParameter("department");
		String date= req.getParameter("date");
		String rollno= req.getParameter("rollno");
		String address= req.getParameter("address");
		String mobileno= req.getParameter("mobileno");
		String semester= req.getParameter("semester");
		String payment= req.getParameter("payment");
		String amount= req.getParameter("amount");
		String cgst= req.getParameter("cgst");
		String sgst= req.getParameter("sgst");
		String totalamount= req.getParameter("totalamount");
		String amountinword= req.getParameter("amountinword");
		String remarks= req.getParameter("remarks");
		
		
		RequestDispatcher dis= null;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/feesmanagementsystem","root","root");
			PreparedStatement ps=con.prepareStatement("insert into feesdetails values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, recieptno);
			ps.setString(2, school_college);
			ps.setString(3, studentname);
			ps.setString(4, session);
			ps.setString(5, department);
			ps.setString(6, date);
			ps.setString(7, rollno);
			ps.setString(8, address);
			ps.setString(9, mobileno);
			ps.setString(10, semester);
			ps.setString(11, payment);
			ps.setString(12, amount);
			ps.setString(13, cgst);
			ps.setString(14, sgst);
			ps.setString(15, totalamount);
			ps.setString(16, amountinword);
			ps.setString(17, remarks);
			
			
			int rowcount=ps.executeUpdate();
			dis = req.getRequestDispatcher("Addfees.jsp");
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
