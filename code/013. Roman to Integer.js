/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {

    var roman = ['M','D','C','L','X','V','I'];
    var value = [1000,500,100,50,10,5,1];
    var res = 0;

    for (var i = 0; i < s.length; i++) {
        var index = roman.indexOf(s.charAt(i));
        if (i+1 < s.length) {
            var indeXnext = roman.indexOf(s.charAt(i+1));
            if (value[index] >= value[indeXnext]) {
                res += value[index];
            }else {
                res -= value[index];
            }
        }else {
            res += value[index];
        }
    }

    return res;
};

var test = 'MMMMM';
console.log(romanToInt(test));