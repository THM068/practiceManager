<div class="nav">
   <span><div style="font-size:12px;font-weight:bold">Welcome
   <g:if test="${session.user}">
        ${session.user.contact.name + " " + session.user.contact.surname}
   </g:if>
   <g:else ><sec:username /> </g:else>
   </div>
         <g:link controller="client" action="list" >Clients </g:link> |
         <g:link controller="contact" action="list" >Contacts </g:link>  |
         <g:link url="/practiceManager/logout">Logout</g:link>
   </span>
</div>
