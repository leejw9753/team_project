<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
   Identity by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Jeju Go!</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
   </head>
   <body class="is-preload">
      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Main -->
               <section id="main">
                  <header>
                     <h1>숙박 날짜 검색</h1>
                     <input type="text" style="text-transform: lowercase;" placeholder="이름">
                  </header>
                  <hr />
                  <form method="post" action="#">
                     <div class="fields">
                        <div class="field">
                           <input type="date" name="name" id="name" placeholder="Name" />
                        </div>
                        <div class="field">
                           <input type="date" name="email" id="email" placeholder="Email" />
                        </div>
                     <!--    <div class="field">
                           <select name="department" id="department">
                              <option value="">Department</option>
                              <option value="sales">Sales</option>
                              <option value="tech">Tech Support</option>
                              <option value="null">/dev/null</option>
                           </select>
                        </div>
                        <div class="field">
                           <label>But are you a robot?</label>
                           <input type="radio" id="robot_yes" name="robot" /><label for="robot_yes">Yes</label>
                           <input type="radio" id="robot_no" name="robot" /><label for="robot_no">No</label>
                        </div> -->
                     </div>
                     <ul class="actions special">
                        <li><a href="#" class="button">숙소 검색</a></li>
                     </ul>
                  </form>
                  <hr/>
                  <!-- <footer>
                     <ul class="icons">
                        <li><a href="#" class="icon brands fa-twitter">Twitter</a></li>
                        <li><a href="#" class="icon brands fa-instagram">Instagram</a></li>
                        <li><a href="#" class="icon brands fa-facebook-f">Facebook</a></li>
                     </ul>
                  </footer> -->
               </section>

            <!-- Footer -->
               <!-- <footer id="footer">
                  <ul class="copyright">
                     <li>&copy; 제주 고</li><li>전화번호: <a href="http://html5up.net">02)1234-5678</a></li>
                  </ul>
               </footer> -->

         </div>

      <!-- Scripts -->
         <script>
            if ('addEventListener' in window) {
               window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
               document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
            }
         </script>

   </body>
</html>