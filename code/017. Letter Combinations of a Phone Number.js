/**
 * @param {string} digits
 * @return {string[]}
 */
var letterCombinations = function(digits) {

    if (digits.length === 0){
        return [];
    }

    var strings = [];
    return splice(strings,digits);

};

var splice = function (strings,digits) {


    var nums = ['2','3','4','5','6','7','8','9'];
    var letters = ['abc','def','ghi','jkl','mno','pqrs','tuv','wxyz'];

    var index = nums.indexOf(digits.charAt(0));
    digits = digits.substring(1);
    var letter = letters[index];
    var temp = [];

    if (strings.length === 0) {
        for (var i = 0; i < letter.length; i++){
            strings.push(letter.charAt(i));
        }
    }else {

        for (var i = 0; i < strings.length; i++) {

            for (var j = 0; j < letter.length; j++) {
                temp.push(strings[i]+letter[j]);
            }

        }

        strings = temp;
    }

    if (digits.length === 0) {
        console.log(strings);
        return strings;
    }

    return splice(strings,digits);

};

letterCombinations('3737363');