package com.practiceManager

/**
 * Created by IntelliJ IDEA.
 * User: thando
 * Date: 6/28/11
 * Time: 12:14 PM
 * To change this template use File | Settings | File Templates.
 */
class ConvertTime {
    private static final int SIX_MINUTES = 6
    private static final double TENTH = 0.1

    public static BigDecimal convertToPracticeTime(Double value) {
        int decimalPlaces = 2;
        double d = (TENTH * value) / SIX_MINUTES
        BigDecimal bd = new BigDecimal(d);
        bd = bd.setScale(decimalPlaces,BigDecimal.ROUND_HALF_UP)
        return bd;
    }


}
