package com.practiceManager

class CalculationsService {

    static transactional = true

    BigDecimal convertToPracticeTime(Double value) {
        return ConvertTime.convertToPracticeTime(value)
    }

    BigDecimal calculateEntryFees(BigDecimal practiceTime,clientRate){
        return practiceTime * clientRate
    }
}
