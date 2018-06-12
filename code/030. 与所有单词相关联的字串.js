/**
 * @param {string} s
 * @param {string[]} words
 * @return {number[]}
 */
var findSubstring = function(s, words) {

    var dic = [];

    for (var i = 0; i < words.length; i++) {
        var word = words[i];
        for (var l = 0, j = 0; l < s.length; l++) {
            while (s[l] === word[j]) {
                if (j === word.length - 1){
                    dic[(l-j).toString()] = word.length.toString();
                    j = 0;
                    break;
                }
                l++;j++;
            }
        }
    }
    console.log(dic);


    var res = [];
    var list = Object.keys(dic);
    for (var key in dic) {
        var value = dic[key];
        var val = parseInt(key)+parseInt(value);
        if (list.indexOf(val.toString()) !== -1) {
            res.push(parseInt(key));
        }
    }

    // return res;
    console.log(dic+'\n'+res+'\n'+list);
};

findSubstring('wordgoodstudentgoodword',['word','student']);