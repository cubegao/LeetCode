/**
 * @param {number} x
 * @return {number}
 */
var reverse = function(x) {

    if (typeof x === 'number' && x%1 === 0) {

    }else {
        return ;
    }

    var s = x.toString();
    var f = '';
    if (s.charAt(0) === '-'){
        f = '-';
        s = s.slice(1);
    }
    var sList = s.split('');
    console.log(sList);

    for (var i = 0; i<sList.length/2; i++) {
        var temp = sList[i];
        sList[i] = sList[sList.length-1-i];
        sList[sList.length-1-i] = temp;

    }
    console.log(sList);

    s = sList.join('');
    var result = 0;
    if (f === '-') {
      result = -parseInt(s);
    }else {
        result = parseInt(s);
    }

    console.log(result);

    var n = 32;
    if (result < -Math.pow(2,(n-1)) || result > Math.pow(2,(n-1))-1)
        result = 0;

    // const reversed =  parseInt(Math.abs(x).toString().split('').reverse().join('')) * Math.sign(x);
    // return (reversed <= 0x7fffffff && reversed >= -0x80000000) ? reversed : 0;
    console.log(Math.pow(2,(n-1)));
    return result;

};

var test = 1;
reverse(test);