package com.practiceManager

import spock.lang.Specification
import spock.lang.Unroll

class ConvertTimeSpec extends Specification {

    @Unroll("gugu can add time in minutes ans its converted to correct format #time")
    def "gugu can add time in minutes ans its converted to correct format"(){

        expect:'right conversion'
              ConvertTime.convertToPracticeTime(time) == expected

        where:
        time | expected
        6    |  0.1
        20   |  0.33
        16.2 |  0.27
        23   |  0.38
        60   |  1
        90   |  1.5
    }

}
