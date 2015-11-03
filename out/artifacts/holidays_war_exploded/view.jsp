<%--
  Created by IntelliJ IDEA.
  User: surya.kumar
  Date: 23/10/15
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.*"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.*"%>
<%@page import="flipkart.com.day.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*" %>
<%@page import="org.json.*" %>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>

<%
  response.setContentType("text/html");
  response.addHeader("Freeflow","FC");
  java.util.Date mydt = new java.util.Date();
  response.setDateHeader("Date", mydt.getTime());
%>
<html xmlns="http://www.w3.org/1999/html">
<head>

  <style type="text/css">
    .bs-example{
      margin: 2%;
    }
    .td{
      font-size: 100mm;
    }
  </style>

  <link rel="stylesheet" href="css/bootstrap.css"/>
  <link rel="stylesheet" href="css/bootstrap.min.css"/>

</head>
<body>
<div class="bs-example">

  <table id="data_table" class="sortable table table-striped table-bordered" cellpadding="0" cellspacing="0" border="0"  >
    <thead >
    <tr align="center">
      <td ><font size="2%"><b>Date</b></font></td>
      <td ><font size="2%"><b>Type</b></font></td>
      <td ><font size="2%"><b>Location</b></font></td>
      <td ><font size="2%"><b>Reason</b></font></td>
      <td ><font size="2%"><b>Facility</b></font></td>
    </tr>
    </thead>

<% try {

  String fres1=request.getAttribute("fres").toString();

  JSONArray newJArray = new JSONArray(fres1);

  for (int i=0;i<newJArray.length();i++)
  {
    String s = newJArray.getString(i);
    JSONObject reader = new JSONObject(s);
    String Location    = reader.getString("location_code");
    String Facility    = reader.getString("facility_type");
    String Date    = reader.getString("date_of_holiday");
    String Holiday_name    = reader.getString("holiday_name");
    String Holiday_type    = reader.getString("holiday_type");
    request.setAttribute("Location",Location);
    request.setAttribute("Facility",Facility);
    request.setAttribute("Date",Date);
    request.setAttribute("Holiday_name",Holiday_name);
    request.setAttribute("Holiday_type",Holiday_type);
%>
    <tbody>
    <tr align="center">
      <td> <font size="1%"><b> <%= request.getAttribute("Date")%></b></font> </td>
      <td> <font size="1%"><b> <%= request.getAttribute("Holiday_type")%></b></font> </td>
      <td> <font size="1%"><b> <%= request.getAttribute("Location")%></b></font> </td>
      <td> <font size="1%"><b> <%= request.getAttribute("Holiday_name")%></b></font> </td>
      <td> <font size="1%"><b> <%= request.getAttribute("Facility")%></b></font> </td>
    </tr>
    </tbody>

<%
//    RequestDispatcher view = request.getRequestDispatcher("view1.jsp");
//    view.forward(request,response);
//    return;
}%>
</table>
</div>
</body>
</html>
<%
} catch (Exception e) {
  e.printStackTrace();
  JSONObject jstat = new JSONObject();
  JSONObject jres = new JSONObject();
  JSONObject jout = new JSONObject();
  jstat.put("statusCode", "1");
  jstat.put("errorCode",APPERROR.APP_UNKNOW_ERROR);
  jstat.put("errorMessage",APPERROR.APP_UNKNOW_ERROR_DESC);
  jres.put("status", jstat);
  jout.put("result", jres);
  out.println( jout.toString());
}
%>

