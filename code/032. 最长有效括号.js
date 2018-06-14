/**
 * @param {string} s
 * @return {number}
 */
var longestValidParentheses = function(s) {

    var res = 0;
    var leftp = '(';
    var temp = [];
    var last = -1;
    var top = [];

    if (s.length <= 1) return res;

    for (var i = 0; i < s.length; i++) {

        if (s.charAt(i) === leftp) {
            temp.push(s.charAt(i));
            top.push(i);
        }else {
            if (temp.length === 0) {
                last = i;
            }else {
                temp.pop();
                top.pop();
                if (temp.length === 0) {
                    res = Math.max(res,i-last);
                }else {
                    // console.log(temp+' i='+i+' top='+top);
                    res = Math.max(res,i-top[top.length-1]);
                }
            }
        }
    }

    console.log(res);
    return res;
};

longestValidParentheses('()(()');