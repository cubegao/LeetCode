/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strs) {

    var maxPre = strs[0];

    if (strs.length === 0) {
        return '';
    }

    for (var i = 0; i < strs.length; i++){
        while (strs[i].indexOf(maxPre) !== 0) {
            maxPre = maxPre.substring(0,maxPre.length-1);
            if (maxPre.length === 0) return '';
        }
    }


    return maxPre;
};


var test = ['leetcodes','leetcodes','leetcodes','leetcodes','leetcosdes',];
console.log(longestCommonPrefix(test));