<%--
  Created by IntelliJ IDEA.
  User: surya.kumar
  Date: 23/10/15
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <link rel="stylesheet" href="css/sty.css"/>
  <link rel="stylesheet" href="css/button.css"/>
  <link rel="stylesheet" href="css/application.css"/>
  <link rel="stylesheet" href="css/styles.css"/>
  <link rel="stylesheet" href="css/link.css"/>
  <link rel="stylesheet" href="css/bootstrap.css"/>
  <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
  <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/datepicker.css"/>
  <link rel="stylesheet" href="css/bootstrap1.min.css"/>

  <link rel="stylesheet" href="css/form.css"/>
  <link rel="stylesheet" href="css/mail.css"/>
  <link rel="stylesheet" href="css/standard.css"/>
  <link rel="stylesheet" href="css/social.css"/>

  <script src="js/bootstrap.js"></script>
  <script src="js/application.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.min.js"></script>
  <script src="js/mail.min.js"></script>
  <script src="js/mail1.js"></script>
  <script src="js/jquery1.min.js"></script>
  <script src="js/bootstrap1.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script>
    function isNumber(evt) {
      evt = (evt) ? evt : window.event;
      var charCode = (evt.which) ? evt.which : evt.keyCode;
      if ( (charCode >= 48 && charCode <= 57) ||charCode ==44 ) {
        return true;
      }
      return false;
    }

    window.console = window.console || function(t) {};


  </script>


</head>

<body>
<section id="hire1">

  <h1>Add Holiday</h1>

  <div class="addh">
    <form action="/Servlet" method="post">

      <div class="field name-box">
        <input type="text"  name="pincode" id="Pincode"  onkeypress="return isNumber(event)" placeholder="Enter 6 digit , seperated pincodes"/>
        <label for="Pincode">Pincode</label>
        <span class="ss-icon">check</span>
      </div>

      <div class="field name-box">
        <input type="text" name="reason" id="Reason" placeholder="Enter Holiday Reason" />
        <label for="Reason">Reason</label>
        <span class="ss-icon">check</span>
      </div>
      <div class="field name-box">

        <input type="text" id="datepicker" class="form-control" name="date" data-date-format="yyyy-mm-dd" placeholder="Enter the Date"/>
        <label for="datepicker"> Date</label>
        <span class="ss-icon">check</span>

      </div>

      <input type="radio" id="radio1" name="htype" value="state" >
      <label for="radio1">State</label>
      <input type="radio" id="radio2" name="htype"value="national">
      <label for="radio2">National</label>
      <input type="radio" id="radio3" name="htype" value="city">
      <label for="radio3">City</label>
      <input type="radio" id="radio4" name="htype" value="facility">
      <label for="radio4">Facility</label>

      <br/>
      <br/>
      <br/>






      <input type="submit" id="submit" name="submit" value="Add Holiday"/>

    </form>

  </div>
</section>
<script>

  $('#hire1 .field:first-child input').blur(function () {
    $('#hire1 .field:first-child input').each(function () {
      $this = $(this);
      if (this.value != '') {
        $this.addClass('focused');
        $('.field:first-child input + label + span').css({ 'opacity': 1 });
      } else {
        $this.removeClass('focused');
        $('.field:first-child input + label + span').css({ 'opacity': 0 });
      }
    });
  });
  $('#hire1 .field:nth-child(2) input').blur(function () {
    $('#hire1 .field:nth-child(2) input').each(function () {
      $this = $(this);
      if (this.value != '') {
        $this.addClass('focused');
        $('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
      } else {
        $this.removeClass('focused');
        $('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
      }
    });
  });
  $('#hire1 .field:nth-child(3) input').blur(function () {
    $('#hire1 .field:nth-child(3) input').each(function () {
      $this = $(this);
      if (this.value != '') {
        $this.addClass('focused');
        $('.field:nth-child(3) input + label + span').css({ 'opacity': 1 });
      } else {
        $this.removeClass('focused');
        $('.field:nth-child(3) input + label + span').css({ 'opacity': 0 });
      }
    });
  });





  //@ sourceURL=pen.js
</script>


<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
<script>
  $(function() {
    $("#datepicker").datepicker({
      autoclose: true,
      todayHighlight: true
    }).datepicker('update', new Date());;
  });

</script>



</body>


</html>
