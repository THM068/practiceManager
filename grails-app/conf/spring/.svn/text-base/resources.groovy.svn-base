import com.mchange.v2.c3p0.ComboPooledDataSource
import grails.util.GrailsUtil

beans = {
    dataSource(ComboPooledDataSource) { bean ->
	    bean.destroyMethod = 'close'
	    user =  "puser"
	    password = "userp"
	    driverClass = "com.mysql.jdbc.Driver"
	    jdbcUrl = GrailsUtil.environment == "production"?"jdbc:mysql://localhost:3306/p_manager_prod?autoreconnect=true":"jdbc:mysql://localhost:3306/p_manager_dev?autoreconnect=true"
	    //connection test settings
	    idleConnectionTestPeriod = 2 * 60 * 60 //2 hours
	    testConnectionOnCheckin = true
	  }
}
