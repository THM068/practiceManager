<bean:requiredIndicator>required</bean:requiredIndicator>
	<bean:inputTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:inputTemplate>
	<bean:radioGroupTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:radioGroupTemplate>
	<bean:radioGroupItemTemplate>${field}${label}</bean:radioGroupItemTemplate>
	<bean:customTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:customTemplate>

	<bean:selectTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:selectTemplate>

	<bean:checkBoxTemplate>${field} ${label}<g:if test="${errors}">${errors}</g:if></bean:checkBoxTemplate>
	<bean:countryTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:countryTemplate>
	<bean:textAreaTemplate>${label}${field}<g:if test="${errors}">${errors}</g:if></bean:textAreaTemplate>
	<bean:labelTemplate><label id="${fieldId}Label" for="${fieldId}" class="${labelClass} ${errorClassToUse} ${required}">${label}${label.contains('<') || labelClass?.contains('no-colon') ? '' : ':'} ${required ? "*" : ""}
	        <g:if test="${message(code: bean.getClass().name + '.' + propertyName + '.help', default: '')}">
	                <span class="helptext">
	                        (<g:message code="${bean.getClass().name}.${propertyName}.help"/>)
	                </span>
	        </g:if>
	        </label>
	</bean:labelTemplate>
<bean:errorTemplate><div class="error"><aside class="errorMessage">${message.encodeAsHTML()}</aside></div></bean:errorTemplate>