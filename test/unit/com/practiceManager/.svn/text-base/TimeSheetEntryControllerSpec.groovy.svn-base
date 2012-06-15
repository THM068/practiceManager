package com.practiceManager


import grails.plugin.spock.ControllerSpec
import org.joda.time.DateTime

class TimeSheetEntryControllerSpec extends ControllerSpec {

    def "Gugu can create a time sheet entry"(){
        given:'a timesheet id'
             controller.params.id = 1

        and:'a time sheet oobject in db and user'
            TimeSheet time = new TimeSheet(id:1)
            User  user = new User(id:1,username: 'THM068')
            mockDomain TimeSheet, [time]
            mockDomain( User, [user])

        and:'user is in session'
           controller.session.user = user

        and:'command object is present'
            TimeSheetEntryCommand command = mockCommandObject(TimeSheetEntryCommand)

        when:'the create action is called'
            def model =  controller.create(command)

        then:'entry object is returned'
            model.timeSheetEntryInstance instanceof TimeSheetEntryCommand
    }

    def "Gugu cannot create a time sheet entry when timesheet does not exist"(){
        given:'a timesheet id'
             controller.params.id = 1
        and:'a time sheet oobject in db'
            mockDomain TimeSheet, []

        and:'a mocked entry command obect'
            TimeSheetEntryCommand command = mockCommandObject(TimeSheetEntryCommand)

        when:'the create action is called'
            def model =  controller.create(command)

        then:'a 404 is returned'
            controller.response.status == 404
    }

    def "Gugu can save a timesheet entry"(){
        given:'no entry exists in the database'
             mockDomain TimeSheetEntry,[]

        and:'a user,client and a timesheet exist in the database'
            User user = new User(id:1,username: 'Eddy')
            Client client = new Client(id:1,name: 'FaceBook')
            TimeSheet sheet = new TimeSheet(id:1,user:user,client:client,period:new DateTime(),month:6,year:2011 )
            mockDomain User ,[user]
            mockDomain TimeSheet ,[sheet]
            mockDomain Client, [client]

        and:'the correct params for the entry'
           controller.params['timesheet.id'] = "1"
           controller.params['user.id'] = "1"
           controller.params.startDate = new DateTime()
           controller.params.code = 'Code - C'
           controller.params.description = "Something to write about"
           controller.params.actualTime = 60
           controller.params.practiceTime =0
           controller.params.totalFee = 0
           controller.params.matter = 'Admin'
           controller.params.attendants = 'MM,SH'


        when:'the save action is called'
            controller.save()
        then:'a time sheet entry exists in the database'
            TimeSheetEntry entry= TimeSheetEntry.get(1)
            entry != null
            entry.code == 'Code - C'
            entry.description ==  "Something to write about"
            entry.actualTime == new Double(60)
            entry.practiceTime == new BigDecimal(1)
            entry.matter == 'Admin'
            entry.attendants == 'MM,SH'
            entry.timeSheet.id == 1
            entry.user.id == 1

        and:'and show entry page is displayed'
            controller.redirectArgs.action == 'show'
            controller.model.timeEntryInstance == entry
    }
}
