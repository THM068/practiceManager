<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="home" />
        <title>Client List</title>
    </head>
<body>

    <div class="search">
          <div class="search-box">
        <g:form action="findClient" method="GET">
         <h6>Search By Client Name</h6>
         <span><input name="q" id="search" type="text" class="large" value="${params.q}"/> <input type="submit" value="Search"/></span>
       </g:form></div>
    </div>
   <p></p>

   <div class="link-container">
       <h5>Clients</h5><br/>
   <div class="button-links"> <a href="#" onclick="javascript:createClient()">Create Client</a> | <g:link controller="contact" action="list">Manage Contacts</g:link>
     </div>
   </div>

    <div class="list">
        <table width="980" cellpadding="0" border="0" style="${clientInstanceList?.size()>0 ? 'border-bottom:1px solid #1564a4;':'border-bottom:none'}">
            <tr>
               <th>Name</th>
               <th>Phone</th>
               <th>Address</th>
               <th>Email</th>
                <th></th>
            </tr>
          <g:each in="${clientInstanceList}" var="client" status="i">
              <tr>
                  <td>${client.name.encodeAsHTML()} - <span>${client.code.encodeAsHTML()}</span></td>
                  <td>${client.phone.encodeAsHTML()}</td>
                  <td>${client.address.address.encodeAsHTML()},${client.address.postalCode.encodeAsHTML()},${client.address.city.encodeAsHTML()}</td>
                  <td><a href="mailto:${client.email.encodeAsHTML()}">${client.email.encodeAsHTML()}</a></td>
                  <td><a href="#" onclick="javascript:showClient(${client?.id})" >View</a> |
                       <a href="#" onclick="javascript:editClient(${client?.id})" > Edit</a> |
                      <g:link controller="client" action="delete" id="${client?.id}" onclick="return confirm('Are you sure?');" > Delete</g:link> |
                      <a href="#" onclick="javascript:createTimeSheet(${client?.id})" >Create TimeSheet</a>
                  </td>
              </tr>
    </g:each>
    </table>
    </div>
%{--</ul>--}%
<div class='pagination'>
	        <g:paginate total="${clientInstanceTotal}"  action="list"/>
	</div>

<script type="text/javascript" >
    function editClient(id){
            var id = id
            window.open("${application.serverURL}client/edit/"+id,"Edit Client Form","location=0,status=0,scrollbars=1,width=500,height=550,screenX=300,screenY=300") ;
        }

function showClient(id){
            var id = id
            window.open("${application.serverURL}client/show/"+id,"View Client","location=0,status=0,scrollbars=1,width=700,height=250,screenX=300,screenY=200") ;
        }


     function createClient(){
            window.open("${application.serverURL}client/create","Client Form","location=0,status=0,scrollbars=1,width=500,height=550,screenX=300,screenY=300") ;
        }

    function createTimeSheet(id){
            window.open("${application.serverURL}timeSheet/create/"+id,"TimeSheet Form","location=0,status=0,scrollbars=1,width=950,height=550,screenX=300,screenY=300") ;
        }

    $(document).ready(function (){
        $('#search').autocomplete({
         source: "${createLink(action: 'autoSearch',controller:'client')}"
        });
    });
</script>
</body>
</html>
