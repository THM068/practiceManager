package com.practiceManager

import org.joda.time.DateTime

class Contact {

    static hasMany = [activities:TimeSheetEntry]

    String  name
    String  surname
    String  fullName
    String  role
    String  phone
    String  cellPhone
    String  email
    byte [] photo
    Address address
    DateTime dateCreated
    DateTime lastUpdated
    User  user



    static constraints = {
        fullName(blank:true,nullable: true)
        name(blank:false)
        role(blank:false)
        surname(blank:false)
        phone(blank:false)
        cellPhone(blank:true,nullable: true)
        email(blank: false,email: true,unique: true)
        address(nullable: false)
        photo(nullable: true)
        user(nullable:true)
    }

    String  toString(){
        return "$name $surname"
    }


    def afterInsert (){
        fullName = "$name $surname"
    }

    def afterUpdate () {
          fullName = "$name $surname"
    }
}
