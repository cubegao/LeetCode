/**
 Implement strStr().

 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:

 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 */

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



