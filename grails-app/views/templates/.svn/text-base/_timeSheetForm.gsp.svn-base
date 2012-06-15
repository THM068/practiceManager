<g:render template="/templates/beanConfig" />
   <div class="form">
       <g:form action="${ timeSheetInstance?.id ?'update':'save'}" controller="timeSheet">
           <g:hiddenField name="client.id" value="${timeSheetInstance?.client?.id}" />
           <g:hiddenField name="user.id" value="${session.user?.id}" />
        <bean:withBean beanName="timeSheetInstance" >
            <fieldset>
                <legend></legend>
                <ul>
                        <li><input name="client-name" autofocus="" class="large"  value="${timeSheetInstance.client.name}" READONLY/></li>
                        <li><div>Period</div>
                            <table class="table-form" cellpadding="0" cellspacing="0">
                               <tr>
                                <td>
                                      <label id="monthLabel" class="  required">Month: *</label>
                                      <select name="month"   >
                                      <g:each in="${['January','February','March','April','May','June','July','August','September','October','November','December']}" var="v" status="i">
                                             <option value="${i}" >${v}</option>
                                      </g:each>
                                      </select>
                                </td>
                                <td><bean:input property="year" /></td>
                                </tr>
                            </table>
                        </li>
                        <li><input value="${ timeSheetInstance?.id ?'Update':'Create'}" type="submit"></li>
                </ul>
            </fieldset>
        </bean:withBean>

      </g:form>
   </div>