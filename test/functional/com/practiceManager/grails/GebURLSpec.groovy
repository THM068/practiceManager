package com.practiceManager.grails
import grails.plugin.geb.GebSpec
import org.codehaus.groovy.grails.commons.ConfigurationHolder
import com.practiceManager.pages.LoginPage

public class GebURLSpec extends GebSpec{

    String getBaseUrl() {
           "http://localhost:8080/practiceManager"
	   }

    void login(String user,String passwd){
          to LoginPage
          username.value(user)
          password.value(passwd)
          submitButton
    }

    void loginAsAdminUser() {
	     login('admin', 'password1234')
        }

    void logout(){
        go "/practiceManager/logout"
    }

}
