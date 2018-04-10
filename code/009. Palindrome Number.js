/**
 Determine whether an integer is a palindrome. Do this without extra space.

 click to show spoilers.

 Some hints:
 Could negative integers be palindromes? (ie, -1)

 If you are thinking of converting the integer to string, note the restriction of using extra space.

 You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow. How would you handle such case?

 There is a more generic way of solving this problem.
 */

/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {


    if (x < 0) return false;
    var div = 1;
    while (x / div >= 10) {
        div *= 10;
    }


    while (x > 0) {
        var l = Math.floor(x / div);
        var r = x % 10;
        // console.log(x,l,r);

        if (l !== r) return false;
        x = Math.floor(x/10)-div*l/10;
        div /= 100;

    }

    // console.log(222);
    return true;

};


isPalindrome(32123);
