/**
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"



 Write the code that will take a string and make this conversion given a number of rows:

 string convert(string text, int nRows);
 convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
 */

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