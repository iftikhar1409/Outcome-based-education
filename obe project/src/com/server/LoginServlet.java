package com.server;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.*;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException{
		try {
			InstructorController ins=new InstructorController();
			String uname=req.getParameter("uname");
			String psw=req.getParameter("psw");
			boolean existed=ins.loginInstructor(uname, psw);
			if(existed){
				HttpSession session=req.getSession();
				session.setAttribute("username",uname);
				session.setAttribute("password",psw);
				res.sendRedirect("app.jsp");
			}else{
				res.sendRedirect("index.html");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

	}
	



}
