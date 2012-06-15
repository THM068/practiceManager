
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Create a Time Sheet</title>
        <g:render template="/templates/resources" />
  </head>
  <body>
         <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
             </g:if>
        <h4>Create a Time Sheet</h4>
        <g:hasErrors bean="${timeSheetInstance}">
            <div class="errors">
                <g:renderErrors bean="${timeSheetInstance}" as="list" />
            </div>
        </g:hasErrors>
        <g:render template="/templates/timeSheetForm" />

  </body>
</html>