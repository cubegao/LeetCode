/**
 * @param {string} s
 * @param {number} numRows
 * @return {string}
 */
var convert = function(s, numRows) {

    if (s.length <= 0 || numRows === 0){
        return '';
    }

    var r = 0;
    var t = 1;
    var temp = [];
    for (var i = 0; i < s.length; i++) {

        if (temp[r] === undefined){
            temp[r] = '';
        }

        temp[r] = temp[r]+s[i];
        if (r === 0) {
            r++;
            t = 1;
        }else if (r === numRows-1) {
            r--;
            t = -1;
        }else {
            if (t === 1) {
                r++;
            }else {
                r--;
            }
        }


    }

    var string = temp.join('');
    // console.log(string)
    return string;
};

var test = 'PAYPALISHIRING';
convert(test,3);