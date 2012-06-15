package com.practiceManager

import grails.converters.JSON

class ContactController {

    def index = {
      redirect(action:'list')
    }

    def create = {
        [cmd:new Contact(address:new Address())]
    }

    def show = {
        def contact= params.id ? Contact.get(params.id):null
         if(contact){
             return [contactInstance:contact]
         }
        else{
             flash.message =  message(code:'client.show.no.such.record')
             redirect(action:'list')
         }
    }

    def save = {
         Contact contact = new Contact(address:new Address())
         contact.properties = params
         contact.address?.validate()
            if(contact.save()) {
                flash.message = message(code:'client.create.success')
                redirect(action:'success')
                return
             }else{
                 render(view:'create',model:[cmd:contact])
                 return
            }
    }

    def list = {
         params.max = Math.min(params.max ? params.int('max') : 30, 50)
        [contactInstanceList: Contact.list(params), contactInstanceTotal: Contact.count()]
    }

    def autoSearch = {
        def results = Contact.withCriteria {
         ilike 'surname', params.term + '%'
         }

       render results.fullName as JSON
    }

    def delete = {

     def contact = params.id ?  Contact.get(params.id): null
       if( contact ) {
            contact.delete()
            flash.message = message(code:'contact.delete.success')
            redirect(action:'list')
       }
       else{
           flash.message = message(code:'contact.delete.record.fail')
            redirect(action:'list')
       }
    }

     def findClient = {
        String search = params.q
        if(search){
            def surname = search.contains(",") ? search.split(",")[0] : search
            println surname
            def list = Contact.findAllBySurnameIlike(surname+"%")
            def count = Contact.countBySurnameIlike(surname+"%")
            render(view:'list',model:[contactInstanceList:list, contactInstanceTotal:count])
            return
        }
        else{
           flash.message = "The contact record does not exists in the database"
           render(view:'list',model:[contactInstanceList:[], contactInstanceTotal:0])
        }
    }


    def edit = {
          def contact= params.id ? Contact.get(params.id):null
         if(contact){
            render(view:'edit',model:[cmd:contact])
         }else{
             flash.message = message(code:'contact.edit.no.such.record')
             redirect(action:'list')
         }
    }

    def update = {
         def contact = params.id ? Contact.get(params.id):null
         contact.address.validate()
        if(contact){
            contact.properties = params
            if(contact.save()){
              println "1"
              flash.message = message(code:'client.update.success')
              redirect(action:'success')
            }
            else{
                 render(view:'edit',model:[cmd:contact])
            }

        }
    }



    def success = {  }


}
