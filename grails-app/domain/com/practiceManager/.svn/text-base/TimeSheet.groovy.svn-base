package com.practiceManager

import org.joda.time.DateTime

class TimeSheet {

    static    belongsTo = [client:Client,user:User]
    static    hasMany = [entries:TimeSheetEntry]


    Integer   month
    Integer   year
    DateTime  period
    DateTime  dateCreated
    DateTime  lastUpdated


    static constraints = {
        month(min: 1,max:12,nullable: false )
        year(matches: /\d{4}/,min:1000,nullable: false)
        period(nullable: true)
    }

    def afterInsert (){
          period = new DateTime(year,month,1,0,0,0,0)
    }

    def afterUpdate() {
          period = new DateTime(year,month,1,0,0,0,0)
    }


}
