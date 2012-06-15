<%@ page import="com.practiceManager.BillingType; com.practiceManager.Code; com.practiceManager.Contact; com.practiceManager.Matter; org.joda.time.DateTime" %>
<%
  DateTime.Property pMonth = timeSheetEntryInstance.timeSheet.period.monthOfYear()
  String month = pMonth.getAsText()
%>
<h4>TimeSheet Entry Details</h4>
     <div class="tabular-data-container">
         <table border="0" width="600" cellpadding="0" style="border-top:none;">
        <tr>
            <td width="100" class="data-label">Client Name :</td>
            <td width="200">${timeSheetEntryInstance.timeSheet.client.name.encodeAsHTML()}</td>
            <td width="100" class="data-label">Period: </td>
            <td width="200">${month} ${timeSheetEntryInstance.timeSheet.year}</td>
        </tr>
      </table>
 </div>
<p></p>
 <div class="form">
      <g:form action="${ timeSheetEntryInstance?.id ?'update':'save'}" controller="timeSheetEntry">
           <g:hiddenField name="timeSheet.id" value="${timeSheetEntryInstance?.timeSheet.id}" />
        <bean:withBean beanName="timeSheetEntryInstance" >
             <bean:hidden property="userId" />
      <table border="0" width="600" cellpadding="0" style="border-top:none;">
        <tr>
            <td >Start Date<br/>
                <joda:datePicker name="startDate" value="${timeSheetEntryInstance.timeSheet.period ? timeSheetEntryInstance.timeSheet.period:timeSheetEntryInstance.startDate }" />${timeSheetEntryInstance.startDate}</td>

            <td >
                <bean:select property="code" class="large" from="${ ['']+Code.list()}"/>
            </td>
        </tr>
         <tr>
             <td><bean:select property="matter" class="large" from="${ ['']+Matter.list()}" value="${timeSheetEntryInstance.matter}"/></td>
             <td> Billing Rate *<br/>
                  <input type="radio" name="rateType" value="${BillingType.clientRate}"  ${ timeSheetEntryInstance.rateType.equals(BillingType.clientRate.toString()) ?"checked":""}> Client Rate&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="rateType" value="${BillingType.userRate}" ${ timeSheetEntryInstance.rateType.equals(BillingType.userRate.toString()) ?"checked":""}> User Rate

             </td>
         </tr>
          <tr>
              <td><bean:select property="contact" from="${['']+Contact.list()}"  class="large"/></td>
              <td rowspan="2"><bean:textArea property="description" class="large-text"/></td>
          </tr>
          <tr>
             <td><bean:input property="actualTime" label="Time in minutes" class="large"/></td>
          </tr>
          <tr><td><input value="${ timeSheetEntryInstance?.id ?'Update':'Create'}" type="submit"></td>
          </tr>
      </table>
       </bean:withBean>

       </g:form>
 </div>
<script type="text/javascript">
    function split( val ) {
             return val.split( /,\s*/ );
      }

    function extractLast( term ) {
             return split( term ).pop();
      }

    $( "#code" ).bind( "keydown", function( event ) {
                if ( event.keyCode === $.ui.keyCode.TAB &&
                    $( this ).data( "autocomplete" ).menu.active ) {
                        event.preventDefault();
                    }
                }).autocomplete({
				minLength: 0,
				source: "${createLink(action: 'autoSearch',controller:'code')}",
				focus: function() {
					// prevent value inserted on focus
					return false;
				},
				select: function( event, ui ) {
					var terms = split( this.value );
					// remove the current input
					terms.pop();
					// add the selected item
					terms.push( ui.item.value );
					// add placeholder to get the comma-and-space at the end
					terms.push( "" );
					this.value = terms.join( ", " );
					return false;
				}
			});
</script>