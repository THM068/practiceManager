
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Create a Contact</title>
   <g:render template="/templates/resources" />
  </head>
  <body>
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
             </g:if>
        <g:render template="/templates/contactForm" />
  </body>
</html>