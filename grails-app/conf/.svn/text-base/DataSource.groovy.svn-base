dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "puser"
    password = "userp"
    minPoolSize = 5

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/p_manager_dev?autoreconnect=true"
        }
    }
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:mysql://localhost:3306/p_manager_test?autoreconnect=true"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/p_manager_prod?autoreconnect=true"
        }
    }
}
