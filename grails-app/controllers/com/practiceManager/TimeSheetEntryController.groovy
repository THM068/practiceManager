package com.practiceManager

import org.joda.time.DateTime

class TimeSheetEntryController {

    def index = { }

    def create = { TimeSheetEntryCommand cmd->
        def timeSheet = params.id ? TimeSheet.get(params.id) : null
        if(timeSheet){
            cmd = new TimeSheetEntryCommand(id:null,timeSheet:timeSheet,userId: session?.user?.id)
            return  [timeSheetEntryInstance:cmd]
        }
        else{
            response.sendError(response.SC_NOT_FOUND)
        }
    }

    def save = { TimeSheetEntryCommand cmd->
        cmd.validate()
        if(cmd.hasErrors){
            TimeSheetEntry entry = getEntry(cmd)
            if(entry.save(failOnError:true)){
               redirect(action:'show',id:entry.id, model:[timeSheetEntryInstance:entry])
            }
        }
        else{
            render view:'create',model:[timeSheetEntryInstance:cmd]
        }

    }

    def show = {
       def timeSheetEntryInstance = params.id ? TimeSheetEntry.get(params.id) : null

        if(timeSheetEntryInstance) {
            return [timeSheetEntryInstance:timeSheetEntryInstance]
        }
    }

    private TimeSheetEntry getEntry (TimeSheetEntryCommand cmd){
        return null

    }
}

class TimeSheetEntryCommand {

    TimeSheet   timeSheet
    Long        id
    Long        userId
    String      contact
    String      rateType
    String      code
    String      description
    String      matter
    Double      actualTime
    DateTime    startDate

    static constraints = {
        code(blank:false)
        userId(nullable:false)
        contact(nullable:false)
        rateType(blank:false)
        description(blank:false)
        matter(blank:false)
        actualTime(nullable:false)
        startDate(nullable:false)

    }


}
