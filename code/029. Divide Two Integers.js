/**
 Divide two integers without using multiplication, division and mod operator.

 If it is overflow, return MAX_INT.
 */

/**
 * @param {number} dividend
 * @param {number} divisor
 * @return {number}
 */
var divide = function(dividend, divisor) {

    var MAX_INT = Math.pow(2, 31) - 1,
        MIN_INT = -Math.pow(2, 31);
    var dd = Math.abs(dividend);
    var dr = Math.abs(divisor);
    var res = 0;


    var flag = 0;
    if (Math.sign(dividend) === Math.sign(divisor)) {
        flag = 1;
    }else {
        flag = -1;
    }

    while (dd >= dr) {
        var copydr = dr;
        for (var i = 0; dd >= copydr; i++) {
            dd -= copydr;
            res += 1 << i;
            if (copydr <= (MAX_INT>>1))
            copydr = copydr << 1;
        }
    }

    if (flag===1 && res > MAX_INT || flag===-1 && res < MIN_INT) return MAX_INT;
    return (Math.sign(dividend) === Math.sign(divisor))? res:-res;
};

console.log(divide(1100540749,-1090366779));