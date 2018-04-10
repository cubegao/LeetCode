/**
 * @param {string} str
 * @return {number}
 */
var myAtoi = function(str) {

    var result = '';
    var i = 0;
    var sList = str.split('');
    var sign = '';
    while (i < sList.length){

        var a = sList[i].charCodeAt(0) - 48;
        if (sList[i] === ' ' ) {
            if (result.length === 0){
                if (sign.length !== 0){
                    return 0;
                }
            }else {
                break;
            }
        }else if (a >= 0 && a <= 9) {
            if (sList[i] !== ' ' && sList[i] !== null){
                result = result.concat(sList[i]);
            }
        } else {
            if (sList[i] === '-' || sList[i] === '+') {
                if (sign === ''){
                    sign = sList[i];
                }else {
                    return 0;
                }
            }else {
                break ;
            }
        }

        i++;
    }

    if (result.length === 0){
        return 0;
    }

    var r = 0;
    if (sign === '-'){
        r = -parseInt(result);
    }else {
        r = parseInt(result);
    }

    if (r <= -Math.pow(2,(32-1))){
        r = -Math.pow(2,(32-1));
    }

    if (r >= Math.pow(2,(32-1))-1){
        console.log(123);
        r = Math.pow(2,(32-1))-1;
    }

    console.log(r);
    return r;

};

var test = '   - 321';
myAtoi(test);