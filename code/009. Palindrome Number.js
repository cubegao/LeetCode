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
