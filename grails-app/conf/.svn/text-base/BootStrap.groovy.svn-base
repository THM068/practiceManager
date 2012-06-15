import com.practiceManager.User
import com.practiceManager.Role
import com.practiceManager.Code
import com.practiceManager.UserRole
import grails.util.GrailsUtil
import com.practiceManager.Contact
import com.practiceManager.Address

class BootStrap {

    def init = { servletContext ->
        configUrl(servletContext)
        initUsers()
        initializeCodes()
    }

    def destroy = {
    }

    private void initUsers(){
		println "initUsers ...."

		def adminRole = Role.findByAuthority('ROLE_ADMIN')?: new Role(authority:'ROLE_ADMIN').save()
        def admin = new User(username:'admin',password:'password1234',enabled:true)
        def contact = Contact.findByName('Application')?:
                      new Contact(name:'Application',surname:'Administrator',role:'admin',phone:'n/a',cellPhone: 'n/a',
                      email:'admin@admin.com',address: new Address(address: 'n/a',city: 'n/a',postalCode: 'n/a',region: 'Gauteng'),user: admin).save()


		if (GrailsUtil.environment in ['development', 'test', 'production']) {
             println('i am starting init in environment')
		     if(admin.save()) {  UserRole.create(admin,adminRole)   }
		     println "close initUser...."
		}

    }

    private void configUrl(context){
        if( GrailsUtil.environment == "development" || GrailsUtil.environment == "test"){
             context.setAttribute("serverURL","http://localhost:8080/practiceManager/")
        }
        else{
            context.setAttribute("serverURL","http://li267-72.members.linode.com:8080/practiceManager/")
        }
    }

    private void initializeCodes(){
        def billableCodes = ["A101 - Consultation","A102 - Meeting","A103 - Research","A104 - Drafting","A105 - Opinion","A106 - Review/Analyse","A107 - Perusing"
        ,"A108 - Telephone Call","A109 - Communication","A1010 - General Advice","A1011 - Travel","A1012 - Other"]

        def nonBillableCodes = ["A201 - Office Administration","A202 - Filling","A203 - Travel","A204 - Marketing","A203 - General Administration","A204 - Tenders","A205 - Training","A206 - Leave"]

        billableCodes.each { codeName ->
            Code.findByName(codeName ) ?: new Code(name:codeName,billable: true).save();
        }

        nonBillableCodes.each {codeName ->
            Code.findByName(codeName ) ?: new Code(name:codeName,billable: false).save();
        }

    }

}

