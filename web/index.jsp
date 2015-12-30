<%--
  Created by IntelliJ IDEA.
  User: surya.kumar
  Date: 23/10/15
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <link rel="stylesheet" href="css/styles.css"/>
  <link rel="stylesheet" href="css/sty.css"/>
  <link rel="stylesheet" href="css/button.css"/>
  <link rel="stylesheet" href="css/link.css"/>
</head>


<body id="bod" >

<%--<div id="head-home">--%>

  <%--<p ><font color="white" ><b>Manage Holidays</b></font></p>--%>

<%--</div>--%>





<div id="content11" style="display:none;">


  <iframe class="content1" id="frame" name="content" target="content1" src="frame.jsp" style="background: white;" ></iframe>


</div>


<%--<div id="foot-home">--%>

  <%--<p id="font-head"><font color="white" size="2%"><b>Copyright 2015 © All Rights Reserved | Powered By www.flipkart.com</b></font></p>--%>

<%--</div>--%>



<div id="link-all">
  <ul id="mainlink" >

    <%--<li><a href="holiday_home.jsp" class="link0" target="content" onClick="document.getElementById('frame').parentNode.style.display=''"><span><b> Home</b></span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>

    <li><a href="add.jsp" class="link1" target="content" onClick="document.getElementById('frame').parentNode.style.display=''"><span><b> Add Holiday</b></span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>

    <li><a href="remove.jsp" class="link2" target="content" onClick="document.getElementById('frame').parentNode.style.display=''"><span><b>Remove Holiday</b></span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>

    <li><a href="/holidays/viewServlet" class="link3"  target="content"  onClick="document.getElementById('frame').parentNode.style.display=''"><span><b>View Holiday</b></span></a> &nbsp;&nbsp;&nbsp;&nbsp;</li>

    <li><a href="holiday_home.jsp" class="link0" target="content" onClick="document.getElementById('frame').parentNode.style.display=''"><span><b> Guidelines</b></span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>




      <!--<ul id="sub-link">-->

      <!--<li><a href="holiday/view1" class="link2" target="content" onClick="document.getElementById('frame').parentNode.style.display=''"><span>View By Date</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>-->
      <!--<li><a href="/holiday/search" class="link2" target="content" onClick="document.getElementById('frame').parentNode.style.display=''" ><span>View All</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</li>-->
      <!--</ul>-->


  </ul>


</div>


<div id="footer-frame">



</div>
</body>


</html>





