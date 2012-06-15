package com.practiceManager

import org.joda.time.DateTime

class TimeSheetEntry {
    def calculationsService

    static  belongsTo = [timeSheet:TimeSheet,user:User,contact:Contact]

    BillingType rateType = BillingType.userRate
    Code        code
    String      description
    String      matter
    BigDecimal  practiceTime
    BigDecimal  totalFee
    Double      actualTime
    DateTime    startDate
    DateTime    dateCreated
    DateTime    lastUpdated

    static constraints = {
        rateType(nullable: false)
        description(maxSize: 10000,blank:true)
        code(nullable:false)
        matter(blank:false)
        practiceTime(nullable:false,min:0.0)
        actualTime(min:new Double("0"),nullable:false)
        totalFee(min:new BigDecimal("0"),nullable:false)
        startDate(nullable:true )

    }

    def beforeInsert(){
        if(actualTime){
           practiceTime =  calculationsService.convertToPracticeTime(actualTime)
        }
        if(practiceTime){
              if(code.billable){
                  BigDecimal pTime  =  practiceTime
                  BigDecimal rate   =  timeSheet.client.rate
                  totalFee =  calculationsService.calculateEntryFees(pTime,rate)
                  totalFee = totalFee.setScale(2,BigDecimal.ROUND_HALF_UP)
              }
              else{
                   totalFee = 0
              }
        }
    }

    def afterInsert(){
          int day = startDate.dayOfMonth
          int month = timeSheet.period.monthOfYear
          int year  = timeSheet.period.year
          startDate = new DateTime(year,month,day,0,0,0,0)
    }

    def afterUpdate(){
        int day = startDate.dayOfMonth
        int month = timeSheet.period.monthOfYear
        int year  = timeSheet.period.year
        startDate = new DateTime(year,month,day,0,0,0,0)
    }

    def beforeUpdate(){
        if( isDirty(actualTime.toString())){
             practiceTime =  calculationsService.convertToPracticeTime(actualTime)
        }
        if( isDirty(practiceTime.toString()) ) {
             if(code.billable){
               totalFee = calculationsService.calculateEntryFees(practiceTime,timeSheet.client.rate)
               totalFee = totalFee.setScale(2,BigDecimal.ROUND_HALF_UP)
             }
             else{
                 totalFee = 0
             }
        }
    }
}
