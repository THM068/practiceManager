<html>
  <head><title>Simple GSP page</title>
  <g:render template="/templates/resources" />
  </head>
  <body>
        <g:if test="${flash.message}">
           <div class="message">${flash.message}</div>
    </g:if>
        <center><a href="#" onclick="javascript:closeWindow()">Close</a></center>
  </body>
   <script type="text/javascript">
       function closeWindow(){
           window.close()
           if (window.opener && !window.opener.closed) {
               window.opener.location.reload();
            }
       }
   </script>
</html>