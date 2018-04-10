/**
 * @param {string} haystack
 * @param {string} needle
 * @return {number}
 */
var strStr = function(haystack, needle) {

    if ('' === needle) return 0;

    var j = 0;
    var len = needle.length;
    for (var i = 0; i < haystack.length; i++) {

        if (haystack.charAt(i) === needle.charAt(j)) {
            j++;
            if (j === len){
                return i - len + 1;
            }
        }else {
            i = i-j;
            j = 0;
        }
    }

    return -1;
};

console.log(strStr('mississippi','issip'));



