/**
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 */

/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {

    if (s === null) {
        return true;
    }
    if (s.length === 1) {
        return false;
    }

    var l = ['(', '{','['];
    var r = [')', '}', ']']

    var temp = [];

    for (var i = 0; i < s.length; i++) {
        if (l.indexOf(temp[temp.length-1]) === r.indexOf(s.charAt(i)) && r.indexOf(s.charAt(i)) !== -1){
            temp.pop();
        }else {
            temp.push(s.charAt(i));
        }
        console.log(temp);
    }

    if (temp.length === 0)  return true;

    return false;
};

console.log(isValid('()').toString());