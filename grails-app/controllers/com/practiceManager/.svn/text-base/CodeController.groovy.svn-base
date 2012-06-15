package com.practiceManager

import grails.converters.JSON

class CodeController {

    def index = { }

    def autoSearch = {
        def value =   (params.term).contains(",")?(params.term).split(",").last().trim() : params.term
        def results = Code.withCriteria {
         ilike 'name', value + '%'
         }
       render results.name as JSON
    }

}
