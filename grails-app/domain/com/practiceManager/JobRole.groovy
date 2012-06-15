package com.practiceManager

class JobRole {

    String name

    static constraints = {
        name(blank:false,nullable: false)
    }
}
