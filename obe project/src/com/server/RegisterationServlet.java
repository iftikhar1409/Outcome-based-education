package com.server;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.InstructorController;
import com.dataObjects.Instructor;

public class RegisterationServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			InstructorController ins=new InstructorController();
			Instructor instructor;
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String uname=request.getParameter("uname");
			String email=request.getParameter("email");
			String psw=request.getParameter("psw");
			instructor=new Instructor(fname,lname,uname,email,psw);
			ins.registerInstructor(instructor);
			response.sendRedirect("index.html");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
	}
}


