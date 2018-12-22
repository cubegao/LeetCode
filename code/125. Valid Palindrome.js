/**
 * @param {string} s
 * @return {boolean}
 */
var isPalindrome = function(s) {

    if (s.length <= 0) {
        return true;
    }

    var left = 0;
    var  right = s.length-1;
    while (left < right) {

        var leftChar = s.charAt(left).toLowerCase();
        while ((!(leftChar >= 'a' && leftChar <= 'z') && !(leftChar >= '0' && leftChar <= '9')) && left < right ) {
            left++;
            leftChar = s.charAt(left).toLowerCase();
        }

        var  rightChar = s.charAt(right).toLowerCase();
        while ((!(rightChar >= 'a' && rightChar <= 'z') && !(rightChar >= '0' && rightChar <= '9')) && left < right ) {
            right--;
            rightChar = s.charAt(right).toLowerCase();
        }

        if (leftChar !== rightChar) {
            return false;
        }

        left++;
        right--;
    }

    return true

};

console.log(isPalindrome('race a car'));