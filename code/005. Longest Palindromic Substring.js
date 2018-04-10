/**
 Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

 Example:

 Input: "babad"

 Output: "bab"

 Note: "aba" is also a valid answer.


 Example:

 Input: "cbbd"

 Output: "bb"
 */

/**
 * @param {string} s
 * @return {string}
 */
var longestPalindrome = function(s) {

    if (s.length <= 1 ||  s == null) {
        return s;
    }

    var temp = '';
    for (var i = 0; i < s.length -1 ; i ++ ){
        var t1 = palindrome(s,i,i);
        var t2 = palindrome(s,i,i+1);
        if (t1.length > temp.length) {
            temp = t1;
        }
        if (t2.length > temp.length) {
            temp = t2;
        }
    }

    console.log(temp);
    return temp;

};

var palindrome = function (s,left,right) {

    var temp = '';
    while (left >= 0 && right <= s.length -1) {
        if (s[left] === s[right]){
            temp = s.slice(left,right+1);
            left--;
            right++;
        }else {
            break;
        }
    }

    return temp;
};


//manacher
var manacher = function (s) {

    var sList = [];
    sList[0] = '$';
    while (s.length > 0) {
        sList = sList.concat('#');
        sList = sList.concat(s[0]);
        s = s.slice(1);
    }
    sList = sList.concat('#');
    sList = sList.concat('\0');
    var ss = sList.join('');
    console.log(ss);

    var max = 0;
    var index = 0;
    var mx = 0;
    var id = 0;
    var p = [0];
    for (var i = 1; i < ss.length; i++) {

        if (mx > i) {
            p[i] = Math.min(p[2*id-1]?p[2*id-1]:0,mx-i);
        }else  {
            p[i] = 1;
        }

        while (ss[i - p[i]] === ss[i + p[i]]) p[i]++;

        if (p[i] + i > mx) { //mx 右移
            mx = p[i] + i;
            id = i;
        }

        if (p[i]-1 > max) {
            index = i;
            max = p[i]-1;
        }
    }

    var n = ss.slice(index-max,index+max).split('#').join('');

    return n;

}

var test = 'abcdcba';
longestPalindrome(test);

manacher(test);