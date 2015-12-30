<%--
  Created by IntelliJ IDEA.
  User: surya.kumar
  Date: 28/12/15
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>


  <u><b>Important Points to remember while adding Holidays at LPE</b></u>
<table border="1">
  <tr>
    <td> There are 2 kinds of holidays.<br/><br/>

      1. Destination Holidays (Applicable for Delivery Hubs)<br/>
      2. Source Holidays (Applicable for facilities)<br/><br/>

      Here type takes values national/state/city/facility<br/><br/>

      national    - Nation wide holiday for all destinations<br/>
      state/city  - State/City wise. It gets the State/City information based on the pincode which is passed.<br/>
      facility    - Source Holidays. Applicable for facilities. ( national holidays are only considered for destinations)<br/>
      <br/>
    </td>


  </tr>


</table>
<br/>
  <br/>



<table border="1">
  <tr>
    <td>
<ul>
 <b> Add Holidays</b>
  <hr/>

  <li> Enter Comma (,) separated 6 digit pincodes if there are more than one</li>
  <li> Enter the reason for a Holiday</li>
  <li> Click on the Date you want to mark holiday</li>
  <li> Select the Type (State, National, City, Facility )</li>
  <li> Click on Add holiday</li>

</ul>

    </td>
  </tr>
</table>




</body>
</html>
