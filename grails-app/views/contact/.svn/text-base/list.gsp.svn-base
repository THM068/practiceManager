<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="home" />
        <title>Contact List</title>
    </head>
<body>

    <div class="search">
          <div class="search-box">
        <g:form action="findClient" method="GET">
         <h6>Search By Surname</h6>
         <span><input name="q" id="search" type="text" class="large" value="${params.q}" title="Search by Last name/surname"/> <input type="submit" value="Search"/></span>
       </g:form></div>
    </div>
    <p></p>

   <div class="link-container">
       <h5>Contacts</h5><br/>
   <div class="button-links"> <a href="#" onclick="javascript:createContact()">Create Contact</a> | <g:link controller="client" action="list">Manage Clients</g:link>
     </div>
   </div>
    <g:if test="${flash.message}">
           <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table width="980" cellpadding="0" border="0" style="${contactInstanceList?.size()>0 ? 'border-bottom:1px solid #1564a4;':'border-bottom:none'}">
            <tr>
               <th>Name</th>
               <th>Job Role</th>
               <th>Phone</th>
               <th>Address</th>
               <th>Email</th>
                <th></th>
            </tr>
          <g:each in="${contactInstanceList}" var="contact" status="i">
              <tr>
                  <td>${contact.name.encodeAsHTML()} <span>${contact.surname.encodeAsHTML()}</span></td>
                  <td>${contact.role.encodeAsHTML()}</td>
                  <td>${contact.phone.encodeAsHTML()}</td>
                  <td>${contact.address.address.encodeAsHTML()},${contact.address.postalCode.encodeAsHTML()},${contact.address.city.encodeAsHTML()}</td>
                  <td><a href="mailto:${contact.email.encodeAsHTML()}">${contact.email.encodeAsHTML()}</a></td>
                  <td><a href="#" onclick="javascript:showContact(${contact?.id})" > View</a> |
                      <a href="#" onclick="javascript:editContact(${contact?.id})" > Edit</a> |
                      <g:link controller="contact" action="delete" id="${contact?.id}" onclick="return confirm('Are you sure?');" > Delete</g:link>

                  </td>
              </tr>
    </g:each>
    </table>
    </div>
%{--</ul>--}%
<div class='pagination'>
	        <g:paginate total="${contactInstanceTotal}"  action="list"/>
	</div>

<script type="text/javascript" >
    function createContact(){
            window.open("${application.serverURL}contact/create","Contact Form","location=0,status=0,scrollbars=1,width=500,height=450,screenX=300,screenY=300") ;
        }

    function showContact(id){
            var id = id
            window.open("${application.serverURL}contact/show/"+id,"Edit Contact Form","location=0,status=0,scrollbars=1,width=700,height=300,screenX=300,screenY=100") ;
        }

    function editContact(id){
            var id = id
            window.open("${application.serverURL}contact/edit/"+id,"Edit Contact Form","location=0,status=0,scrollbars=1,width=500,height=550,screenX=300,screenY=300") ;
        }
    $(document).ready(function (){
        $('#search').autocomplete({
         source: "${createLink(action: 'autoSearch',controller:'contact')}"
        });
    });
</script>
</body>
</html>
