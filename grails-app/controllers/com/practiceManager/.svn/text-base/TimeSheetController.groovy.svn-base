package com.practiceManager

import org.joda.time.DateTime

class TimeSheetController {

    def index = { }

    def create = {
        def client = params.id ? Client.read(params.id):null

        if(client){
            TimeSheet timeSheet = new TimeSheet(client:client,user:session.user)
            return [timeSheetInstance:timeSheet]
        }
        else {
            flash.message = message(code:'timesheet.no.such.record')
            redirect action:'list'
        }
    }

    def save = {
        TimeSheet timeSheet = new TimeSheet()
        timeSheet.properties = params
        timeSheet.month    = params.int('month')+1
        //new DateTime(1,1,1,1,1)

        if(timeSheet.save()){
            println "I have been saved"
          //  flash.message = message(code:'timesheet.record.saved')
            render(view:'show',model:[timeSheetInstance:timeSheet])
        }
        else{
            println "I am called"
            render(view:'create',model:[timeSheetInstance:timeSheet])
            return
            }
    }

    def show = {
        def timeSheet = params.id ? TimeSheet.get(params.id):null
        if(timeSheet){
            return [timeSheetInstance:timeSheet]
        }
        else{
           flash.message = message(code:'timesheet.record.does.not.exist')
           redirect(action:'list')
        }

    }
}






