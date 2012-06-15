package com.practiceManager

class Address {
    static belongsTo = [Client,Contact]
    String address
    String city
    String postalCode
    String region

    static constraints = {
        address(blank:false)
        city(blank:false)
        postalCode(blank:false)
        region(inList:["Gauteng","Western Cape", "Eastern Cape", "Northern Cape","Free State","KwaZulu-Natal","Mpumalanga","Limpopo Province (Northern Province)","North West"])
    }


}
