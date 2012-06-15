package com.practiceManager

class User {

    static belongsTo = [contact : Contact ]
    static hasMany = [timeSheets:TimeSheet,entries:TimeSheetEntry]

    def springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

     private void encode(){
        password = springSecurityService.encodePassword(password)
    }

    def beforeInsert() {
          encode()
    }

    def beforeUpdate()  {
        if(isDirty(password)){
            encode()
        }
    }

}
