package com.practiceManager
import grails.plugin.spock.ControllerSpec

class TimeSheetControllerSpec extends ControllerSpec {

    def "Gugu can display a timeSheet form"() {
        given:'a client id '
             controller.params.id = 1

        and:'clients in database'
           Address a1 = new Address(id:1,address: 'asds',city:'redhill',postalCode: '2323',region: 'Gauteng')
           Client c1 = new Client(id:1,name:'alpha',code:'a',email: 't@.com',address: a1,fax: 'ass',cellPhone: 'asd',phone: '23432')
           mockDomain Client, [c1]
           mockDomain Address ,[a1]

        and:'user in session'
           controller.session.user = new User()

        when:'the create action is called'
             def model = controller.create()

        then:'timesheet instance is returned'
            model.timeSheetInstance instanceof  TimeSheet
    }

    def "Gugu cannot display a timeSheet form when client is invalid"() {
        given:'a client id '
             controller.params.id = 1

        and:'clients in database'
           mockDomain Client,[]

        and:'user in session'
           controller.session.user = new User()
           controller.metaClass.message = { LinkedHashMap key -> 'timesheet.no.such.record' }

        when:'the create action is called'
             def model = controller.create()

        then:
           controller.flash.message ==  'timesheet.no.such.record'

         and:
           controller.redirectArgs.action == 'list'
    }

    def "Gugu can save a timesheet"(){
        given :'a user in the database'
              mockDomain TimeSheet
              def user = new User(id:1,username: 'admin',password: 'asd')
              mockDomain User,[user]

        and:'clients in database'
           Address a1 = new Address(id:1,address: 'asds',city:'redhill',postalCode: '2323',region: 'Gauteng')
           Client c1 = new Client(id:1,name:'alpha',code:'a',email: 't@.com',address: a1,fax: 'ass',cellPhone: 'asd',phone: '23432')
           mockDomain Client, [c1]
           mockDomain Address ,[a1]

        and:'some params'
           controller.params.month = 2
           controller.params.year = 2010
           controller.params['client.id'] = 1
           controller.params['user.id'] =1


        when:'the save action is called'
             controller.save()

        then:'a time sheet is present in the database'
             TimeSheet.get(1) !=null

        and:'you are redirected to the show page'
           controller.renderArgs.view == "show"

        and:'timesheet object is returned'
           controller.renderArgs.model.timeSheetInstance instanceof  TimeSheet
    }


    def "Gugu is returned to the create form when invalid data is added"(){
        given:'no timesheets in the database'
             mockDomain TimeSheet ,[]

        and:
            controller.params.month = 0
           controller.params.year = null
           controller.params['client.id'] = 1
           controller.params['user.id'] =1

        when:'the save action is called'
             controller.save()

        then:'create form is displayed'
              controller.renderArgs.view == 'create'
              controller.renderArgs.model.timeSheetInstance instanceof TimeSheet
    }

    def "Gugu can show a time sheet"(){
        given:'a timesheet exists in the database'
               TimeSheet t = new TimeSheet(id:1)
               mockDomain TimeSheet , [t]

        and:  'a database id is provided'
              controller.params.id =1

        when:'the show action is called'
             def model = controller.show()

        then:'show page is rendered and a time sheet object is returned'
             model.timeSheetInstance.id == 1

    }

     def "Gugu cannot show a time sheet record of an invalid id"(){
        given:'a timesheet exists in the database'
               mockDomain TimeSheet

        and:  'a database id is provided'
              controller.params.id =1
              controller.metaClass.message = {LinkedHashMap -> 'timesheet.record.does.not.exist'}

        when:'the show action is called'
             controller.show()

        then:'list page is displayed and flash message appears'
             controller.redirectArgs.action == 'list'

         and:
             controller.flash.message == 'timesheet.record.does.not.exist'

    }


}
