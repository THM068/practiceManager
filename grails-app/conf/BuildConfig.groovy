grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        mavenLocal()
        mavenCentral()
        mavenRepo "http://snapshots.repository.codehaus.org"
        mavenRepo "http://repository.codehaus.org"
        mavenRepo "http://download.java.net/maven/2/"
        mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
         test "org.seleniumhq.selenium:selenium-firefox-driver:2.0a5"
	        if(System.properties['geb.driver'] == 'htmlunit') {
	                test "org.seleniumhq.selenium:selenium-htmlunit-driver:2.0a5"
	      }
         compile 'c3p0:c3p0:0.9.1.2'
         runtime 'mysql:mysql-connector-java:5.1.13'
    }

    plugins {
        compile ":hibernate:1.3.6"
	    compile ":joda-time:1.2"
	    compile ":cache-headers:1.1.2"

	    runtime ":bean-fields:1.0-RC3"
	    runtime ":jquery:1.4.4.1"
	    runtime ":jquery-ui:1.8.7"
	    runtime ":lesscss:0.9.3"
	    //runtime "com.energizedwork:htmlfive-boilerplate:0.1"
	    runtime ":build-test-data:1.1.1"
	    runtime ":fixtures:1.0.1"

        compile ":spring-security-core:1.1.2"

	    test ":spock:0.5-groovy-1.7"
	    test ":geb:0.5.1"
    }
}
