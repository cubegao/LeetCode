/**
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 For example, given n = 3, a solution set is:

 [
 "((()))",
 "(()())",
 "(())()",
 "()(())",
 "()()()"
 ]
 */

/**
 * @param {number} n
 * @return {string[]}
 */
var generateParenthesis = function(n) {

    var t = [];
    var list = insertParenthesis(t,n);
    return list;
};

function insertParenthesis(list,n) {

    var reList = [];
    if (list.length === 0) {
        n--;
        reList.push('()');
    }else {
        for (var i = 0; i < list.length; i++)
        {
            var temp = list[i].split('');
            var len = temp.length;
            for (var j = 0; j < len + 1; j++){
                var tempj = list[i].split('');
                tempj.splice(j,0,'()');
                var t = tempj.join('');
                if (reList.indexOf(t) === -1){
                    reList.push(t);
                }
            }
        }
        n--;
    }

    if (n === 0) {
        return reList;
    }

    return insertParenthesis(reList,n);
}

generateParenthesis(3);