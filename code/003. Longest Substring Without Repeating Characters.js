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