
<html>
  <head><title>Simple GSP page</title></head>
  <body>
  <table>
      <tr>
          <td><b>Start date</b></td>
          <td>${timeSheetEntryInstance?.startDate}</td>
      </tr>
      <tr>
          <td><b>Matter</b></td>
          <td>${timeSheetEntryInstance?.matter}</td>
      </tr>
      <tr>
          <td><b>Code</b></td>
          <td>${timeSheetEntryInstance?.code}</td>
      </tr>
      <tr>
          <td><b>Description</b></td>
          <td>${timeSheetEntryInstance?.description}</td>
      </tr>
      <tr>
          <td><b>Attendants</b></td>
          <td>${timeSheetEntryInstance?.attendants}</td>
      </tr>
      <tr>
          <td><b>Actual Time</b></td>
          <td>${timeSheetEntryInstance?.actualTime}</td>
      </tr>
      <tr>
          <td><b>Practice Time</b></td>
          <td>${timeSheetEntryInstance?.practiceTime}</td>
      </tr>
      <tr>
          <td><b> Total Fees (Rate X practice time)</b></td>
          <td>${timeSheetEntryInstance?.totalFee}</td>
      </tr>
  </table>

   <g:link controller="timeSheet" action="show" id="${timeSheetEntryInstance?.timeSheet.id}">Show my TimeSheet</g:link> |
   <g:link controller="timeSheetEntry" action="create" id="${timeSheetEntryInstance?.timeSheet.id}">Create another Entry</g:link>


  </body>
</html>