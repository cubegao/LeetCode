/**
 Given a string, find the length of the longest substring without repeating characters.

 Examples:

 Given "abcabcbb", the answer is "abc", which the length is 3.

 Given "bbbbb", the answer is "b", with the length of 1.

 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */

/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {

    if(s.length < 2) return s.length;

    var longStrings = '';
    var max = 0;
    var i = 0;

    while(i < s.length){
        var curChar = s.charAt(i);
        var  index = longStrings.indexOf(curChar);

        if(index == -1){
            i++;
            console.log(longStrings+'+'+curChar);
            longStrings += curChar;
            max = Math.max(max,longStrings.length);
        }else {
            longStrings = longStrings.slice(index+1);
            console.log('-'+longStrings);
        }
    }

    console.log(max);

    return max;
};

lengthOfLongestSubstring('abcabcbb');