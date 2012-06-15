<%@ page import="org.joda.time.DateTime" %>
<%
  DateTime.Property pMonth = timeSheetInstance.period.monthOfYear()
  String month = pMonth.getAsText()
%>
<h4>TimeSheet Details </h4>
     <div class="tabular-data-container">
    <table border="0" width="600" cellpadding="0" style="border-top:none;">
        <tr>
            <td width="100" class="data-label">Client Name :</td>
            <td width="200">${timeSheetInstance.client.name.encodeAsHTML()}</td>
            <td width="100" class="data-label">Period: </td>
            <td width="200">${month} ${timeSheetInstance.year}</td>
        </tr>
      </table>
 </div>
<p></p>
 <div class="time-entries">
      <h5>Time Sheet Entries</h5>
       <div class="entry-links">
           <g:link controller="timeSheetEntry" id="${timeSheetInstance.id}" action="create">Add an Entry</g:link>
       </div>

     <table>
         <tr>
             <th>Matter</th>
             <th>Attendants</th>
             <th>code</th>
             <th>Actual Time</th>
             <th>Practice Time</th>
             <th>Total Fees</th>
         </tr>
     <g:each in="${timeSheetInstance.entries}" var="entry" status="pos">
             <tr>
                 <td>${entry?.matter}</td>
                 <td>${entry?.attendants}</td>
                 <td>${entry?.code}</td>
                 <td>${entry?.actualTime}</td>
                 <td>${entry?.practiceTime}</td>
                 <td>${entry?.totalFee}</td>
             </tr>
     </g:each>
     </table>
 </div>