<%--
  Created by IntelliJ IDEA.
  User: surya.kumar
  Date: 23/10/15
  Time: 10:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
  <meta charset="UTF-8">
  <meta name="google" value="notranslate">



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
    window.console = window.console || function(t) {};
  </script>

  <!--<link rel="stylesheet" href="css/mail.css"/>-->

</head>

<body>
<p><font size="2%" color="#a52a2a"><b>This feature is not functional yet. Please raise a request to Logistics-promise-oncall@flipkart.com </b></font></p>
<section id="hire">

  <h1>Contact Me</h1>

  <form action="mail1" method="post" enctype="text/plain" >
    <div class="field name-box">
      <input type="text" id="name" placeholder="Who Are You?"/>
      <label for="name">Name</label>
      <span class="ss-icon">check</span>
    </div>

    <div class="field email-box">
      <input type="text" id="email" placeholder="name@email.com"/>

      <label for="email">Email</label>
      <span class="ss-icon">check</span>
    </div>

    <div class="field msg-box">
      <textarea id="msg" rows="4" placeholder="Your message goes here..."/></textarea>
      <label for="msg">Msg</label>
      <span class="ss-icon">check</span>
    </div>
    <input type="hidden" name="recipient" value="logistics-promise-oncall@flipkart.com" />
    <input type="hidden" name="subject" value="From the feedback form" />
    <input class="button" type="submit" value="Send" />
  </form>
</section>


<script>
  $('textarea').blur(function () {
    $('#hire textarea').each(function () {
      $this = $(this);
      if (this.value != '') {
        $this.addClass('focused');
        $('textarea + label + span').css({ 'opacity': 1 });
      } else {
        $this.removeClass('focused');
        $('textarea + label + span').css({ 'opacity': 0 });
      }
    });
  });
  $('#hire .field:first-child input').blur(function () {
    $('#hire .field:first-child input').each(function () {
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
  $('#hire .field:nth-child(2) input').blur(function () {
    $('#hire .field:nth-child(2) input').each(function () {
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
  //@ sourceURL=pen.js
</script>


<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</body>
</html>


