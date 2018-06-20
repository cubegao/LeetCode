/**
 * @param {string} s
 * @param {string[]} words
 * @return {number[]}
 */
var findSubstring = function(s, words) {

    var wordsDic = {};
    var res = [];
    if (words.length === 0) return res;
    if (s.length === 0) return res;
    var wordLength = words[0].length;

    for (var j = 0; j < words.length; j++) {
        var temp = words[j];
        if (temp.length !== wordLength) return res;
        if (!wordsDic[temp]){
            wordsDic[temp] = 1;
        }else {
            wordsDic[temp] = ++wordsDic[temp];
        }
    }


    for (var i = 0; i < wordLength; i++) {

        var saveDic = {};

        for (var l = i, r = l; s.length-r>=wordLength; ) {

            var temp = s.slice(r,r+wordLength);
            if (words.indexOf(temp) !== -1) {
                if (!saveDic[temp]) saveDic[temp] = 0;

                if (saveDic[temp] < wordsDic[temp]) {
                    saveDic[temp] = ++saveDic[temp];
                }else {
                    //开始退出多的word
                    while (s.slice(l,l+wordLength) !== temp) {
                        var quitWord = s.slice(l,l+wordLength);
                        saveDic[quitWord] = --saveDic[quitWord];
                        l += wordLength;
                    }
                    l += wordLength;
                }
                r += wordLength;
            }else {
                saveDic = {};
                r += wordLength;
                l = r;
            }

            // console.log(temp+' l='+l+' r='+r);

            if (r-l === words.length*wordLength) {
                res.push(l);
                var quitWord = s.slice(l,l+wordLength);
                saveDic[quitWord] = --saveDic[quitWord];
                l += wordLength;
            }
        }
    }

    // console.log(res);
    return res;
};


findSubstring('aaaaaaaa',['aa','aa','aa']);