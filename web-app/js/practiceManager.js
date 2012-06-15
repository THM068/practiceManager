$(document).ready(function () {
       show_hide_links();
    });

function show_hide_links(){
    $('.links').hide();
       $('li').mouseover(function() {
           $(this).children('.links').show();
       } );
       $('li').mouseout(function() {
           $(this).children('.links').hide();
       } );
}

function createContact(){
            window.open("${application.serverURL}contact/create","Contact Form","location=0,status=0,scrollbars=1,width=500,height=450,screenX=300,screenY=300") ;
        }

function editContact(id){
            var id = id
            window.open("${application.serverURL}contact/edit/"+id,"Edit Contact Form","location=0,status=0,scrollbars=1,width=500,height=550,screenX=300,screenY=300") ;
     }