package com.practiceManager.specs

import com.practiceManager.grails.GebURLSpec
import com.practiceManager.pages.CreateClientFormPage
import com.practiceManager.pages.ListClientPage
import spock.lang.Ignore

/**
 * Created by IntelliJ IDEA.
 * User: thando
 * Date: 6/20/11
 * Time: 6:19 PM
 * To change this template use File | Settings | File Templates.
 */
@Ignore
class ClientSpec extends GebURLSpec {

    def setup() {
        logout()
        loginAsAdminUser()
    }


    def "Gugu can create a client"() {
        when:'Gugu navigates to create client page'
             to CreateClientFormPage
        then:'create client page is displayed'
             at CreateClientFormPage

        when:'she completes form and submits it'
            createForm.name.value('Don Suite Hotels')
            createForm.code.value('SDH')
            createForm.phone.value('123-23422')
            createForm.cellPhone.value('123-23422')
            createForm.email.value('sda@hotmail.com')
            createForm.fax.value('1234-4566')
            createForm.address.value('*3 Horley rd')
            createForm.city.value('Redhill')
            createForm.postCode.value('RH1 5AS')
            createForm.region.value('Soweto')
            createForm.submitButton.click()


        then:'she is redirected to the client list page'
            to ListClientPage
    }
}
