package com.practiceManager

import org.joda.time.DateTime

class Client {
   static hasMany = [timeSheets :TimeSheet]

    String           name
    String           code
    String           phone
    String           cellPhone
    String           fax
    String           email
    Address          address
    BigDecimal       rate
    DateTime         dateCreated
    DateTime         lastUpdated


    static constraints = {
        name(blank:false)
        rate(min: 0.0)
        code(blank:false)
        phone(blank:false)
        cellPhone(blank:true,nullable: true)
        email(blank:false,email:true,unique: true)
        fax(blank:true,nullable: true)
        address(nullable:false)
    }

    String toString(){
        return "$name - $code"
    }
}
