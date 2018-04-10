/**
 * @param {number} num
 * @return {string}
 */
var intToRoman = function(num) {

    if (num < 1 || num > 3999 ) {
        return '';
    }

    var roman = ['M','D','C','L','X','V','I'];
    var value = [1000,500,100,50,10,5,1];
    var res = '';

   for (var i = 0; i < roman.length; i+=2){
       var t = Math.floor(num/value[i]);
       if (t < 4){
           while (t>0){
               res += roman[i];
               t--;
           }
       }else if (t === 4) {
           res += roman[i] + roman[i-1];
       }else if (t < 9 && t > 4) {
           res += roman[i-1];
           while (t !== 5){
               res += roman[i];
               t--;
           }
       }else if (t === 9) {
           res += roman[i] + roman[i-2];
       }

       num %= value[i];
   }



    console.log(res);
    return res;

};

intToRoman(5);