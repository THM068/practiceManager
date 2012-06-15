<html>
  <head><title>${clientInstance.name} Details</title>
  <g:render template="/templates/resources" />
  </head>
  <body>
     <h4>Client Details </h4>
     <div class="tabular-data-container">
    <table border="0" width="600" cellpadding="0" >
        <tr>
            <td width="100" class="data-label">Client Name :</td>
            <td width="200">${clientInstance.name.encodeAsHTML()}</td>
            <td width="100" class="data-label">Address :</td>
            <td width="200">${clientInstance.address.address.encodeAsHTML()}</td>
        </tr>
        <tr>
            <td width="100" class="data-label">Client Code :</td>
            <td width="200">${clientInstance.code.encodeAsHTML()}</td>
            <td width="100" class="data-label">City :</td>
            <td width="200">${clientInstance.address.city.encodeAsHTML()}</td>
        </tr>
        <tr>
            <td width="100" class="data-label" >Phone :</td>
            <td width="200">${clientInstance.phone.encodeAsHTML()}</td>
            <td width="100" class="data-label">Post Code :</td>
            <td width="200">${clientInstance.address.postalCode.encodeAsHTML()}</td>
        </tr>
        <tr>
            <td width="100" class="data-label">Cell Phone :</td>
            <td width="200">${clientInstance.phone ? clientInstance.phone.encodeAsHTML() : "n/a"}</td>
            <td width="100" class="data-label">Region :</td>
            <td width="200">${clientInstance.address.region.encodeAsHTML()}</td>
        </tr>
         <tr>
            <td width="100" class="data-label" >Last Updated By :</td>
            <td  colspan="3">Thando Mafela on the ${fieldValue(bean: clientInstance, field: "lastUpdated")}
            </td>
        </tr>
    </table>
       </div>
      <center><a href="#" onclick="javascript:closeWindow()">Close</a></center>
  </body>
   <script type="text/javascript">
       function closeWindow(){
           window.close()
       }
   </script>
</html>