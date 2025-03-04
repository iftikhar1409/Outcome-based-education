<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <link rel="stylesheet" href="webAppStyle.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Web Application</title>
  </head>
  <body>
 		<%
		  if(session.getAttribute("username")==null){
			  response.sendRedirect("index.html");
		  }
	
		%>
    <header class="header">
      <div class="heading">
        <i class="fas fa-bars icon"></i>
        <h3 class="title_heading">OBE Tool Application</h3>
      </div>
    </header>
    <nav class="side_navigation">
      <ul class="list">
        <li class="list_item">
          <a href="#" class="list_item-link">
            <i class="fas fa-pencil-alt icon_list"></i>
            Create Planner</a
          >
        </li>
        <li class="list_item">
          <a href="#" class="list_item-link">
            <i class="far fa-newspaper icon_list"></i>
            Generate Result
          </a>
        </li>
        <li class="list_item">
          <a href="#" class="list_item-link">
            <i class="fas fa-door-open icon_list"></i>
            Log out
          </a>
        </li>
      </ul>
    </nav>
    <div class="main">
      <h1 class="heading_primary">Assesment tool</h1>
      <div class="form_container">
        <h2 class="heading_secondary">Basic Information</h2>
        <form action="#" method="GET">
          <!-- Step 1 -->
          <div class="info">
            <div class="row">
              <input name="NoOfStd" type="text" class="input_field" placeholder="No of Students" /
              required>
            </div>
            <div class="row">
              <label class="label">No of quizes</label>
              <select name="NoOfQu" class="input_select" required>
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="1">5</option>
              </select>
            </div>
            <div class="row">
              <label class="label">No of Assignments</label>
              <select name="NoOfAs" class="input_select" required>
                <option value="1">1</option>
                <option value=2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
            </div>
          </div>
          <!-- Step2 -->
          <div class="info">
            <div class="row">
              <label class="label_question"> Question&nbsp;1</label>
              <label class="label_question"> Select Marks</label>

              <select name="marks" class="input_marks" required >
                
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select>
                <label class="label_question">Select CLO</label>
                <select name="clo" class="input_clo" required>
                    <option value="1">CLO1</option>
                    <option value="2">CLO2</option>
                    <option value="3">CLO3</option>
                    <option value="3">CLO4</option>
                </select>
            </div>
            <div class="row">
                <label class="label_question"> Question&nbsp;1</label>
                <label class="label_question"> Select Marks</label>
  
                <select name="marks" class="input_marks" required >
                  
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                  </select>
                  <label class="label_question">Select CLO</label>
                  <select name="clo" class="input_clo" required>
                      <option value="1">CLO1</option>
                      <option value="2">CLO2</option>
                      <option value="3">CLO3</option>
                      <option value="3">CLO4</option>
                  </select>
              </div>
              <div class="row">
                  <label class="label_question"> Question&nbsp;1</label>
                  <label class="label_question"> Select Marks</label>
    
                  <select name="marks" class="input_marks" required >
                    
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                    </select>
                    <label class="label_question">Select CLO</label>
                    <select name="clo" class="input_clo" required>
                        <option value="1">CLO1</option>
                        <option value="2">CLO2</option>
                        <option value="3">CLO3</option>
                        <option value="3">CLO4</option>
                    </select>
                </div>
                <div class="row">
                    <label class="label_question"> Question&nbsp;1</label>
                    <label class="label_question"> Select Marks</label>
      
                    <select name="marks" class="input_marks" required >
                      
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                      </select>
                      <label class="label_question">Select CLO</label>
                      <select name="clo" class="input_clo" required>
                          <option value="1">CLO1</option>
                          <option value="2">CLO2</option>
                          <option value="3">CLO3</option>
                          <option value="3">CLO4</option>
                      </select>
                  </div>
                   <div class="row">
              <label class="label_question"> Question&nbsp;1</label>
              <label class="label_question"> Select Marks</label>

              <select name="marks" class="input_marks" required >
                
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select>
                <label class="label_question">Select CLO</label>
                <select name="clo" class="input_clo" required>
                    <option value="1">CLO1</option>
                    <option value="2">CLO2</option>
                    <option value="3">CLO3</option>
                    <option value="3">CLO4</option>
                </select>
            </div>
          </div>

          <!-- Step 3 -->

          <!-- Step 4 -->

          <!-- Step 5 -->

          <!-- Buttons -->
          <div class="btn_row">
            <input type="button" value="Previous" class="btn btn_pre" onclick="pre()" />
            <input type="button" value="Next" class="btn btn_next" onclick="next()"/>
          </div>
        </form>
      </div>
    </div>
    <script src="webAppScript.js"></script>
  </body>
</html>
