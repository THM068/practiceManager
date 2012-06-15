package practicemanager

import com.practiceManager.User

class UserSessionFilters {
    def springSecurityService

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                 if(springSecurityService.isLoggedIn()){
                      if(session.user == null ){
                           session.user = User.findByUsername(springSecurityService.principal?.username)
                      }
                 }
            }
                
       }
    
    }
}
