<%@ page import="com.practiceManager.JobRole" %>
<g:render template="/templates/beanConfig" />
   <div class="form">
       <g:form action="${ cmd?.id ?'update':'save'}" controller="contact">
           <g:hiddenField name="id" value="${cmd?.id}" />
        <bean:withBean beanName="cmd" >
            <fieldset>
                <legend></legend>
                <ul>
                        <li><bean:input property="name" autofocus="" class="large" /></li>
                        <li><bean:input property="surname" class="large"/></li>
                        <li><bean:select property="role" label="Job Role" from="${JobRole.list().name}" class="large"/></li>
                        <li><bean:input  property="phone" class="large"/></li>
                        <li><bean:input  property="email" class="large"/></li>
                        <li><bean:input property="address.address" label="Address" class="large" errorClassToUse="error"/></li>
                        <li><bean:input  property="address.city" label="City" class="large" errorClassToUse="error"/></li>
                        <li><bean:input  property="address.postalCode" label="Postal Code" class="large" errorClassToUse="error"/></li>
                        <li><bean:select property="address.region" label="Region" from="${cmd.constraints.region}" class="large"/></li>
                        <li><input value="${ cmd?.id ?'Update':'Create'}" type="submit"></li>
                </ul>

            </fieldset>
        </bean:withBean>

      </g:form>
   </div>