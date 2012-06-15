package com.practiceManager.pages

import geb.Page
import geb.Module

class CreateClientFormPage extends Page{

    static url = "/practiceManager/client/create"
    static at  = { title == 'Create a Client'}

    static content = {
        createForm { module ClientModule, $("div.form") }

    }
}

class ClientModule extends Module {

     static content = {
         name      { $('#name') }
         code      { $('#code') }
         address   { $('#address.address') }
         postCode  { $('#address.postalCode') }
         region    { $('#address.region') }
         city      { $('#address.city') }
         cellPhone { $('#cellPhone') }
         phone     { $('#phone') }
         email     { $('#email') }
         fax       { $ ('#fax') }
         submitButton { $ ('input',type:'submit') }

      }
}
