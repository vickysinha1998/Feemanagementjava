package com.feesmanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Searchpage")
public class Searchpage extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		String recieptno=req.getParameter("recieptno");
		RequestDispatcher rd = req.getRequestDispatcher("Search1.jsp");
		rd.include(req, resp);
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/feesmanagementsystem","root","root");
			PreparedStatement ps=con.prepareStatement("select * from feesdetails where recieptno = ?");
			
			ps.setString(1, recieptno);
			
			pw.print("<table width=100% border=1>");
			pw.print("<caption><h1>Student Details </h1></caption>");
			
			ResultSet rs= ps.executeQuery();
			ResultSetMetaData rsmd= rs.getMetaData();
			int totalcolumn= rsmd.getColumnCount();
			pw.print("<tr>");
			for(int i=1; i<=totalcolumn; i++)
			{
				pw.print("<th>"+rsmd.getColumnName(i)+"</th>");
			}
			
			pw.print("<tr>");
			if(rs.next())
			{
				pw.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td><td>"+rs.getString(12)+"</td><td>"+rs.getString(14)+"</td><td>"+rs.getString(15)+"</td><td>"+rs.getString(16)+"</td><td>"+rs.getString(17)+"</td></tr>");
			}
			else
			{
			pw.print("<h2>ID IS NOT PRESENT</h2>");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
