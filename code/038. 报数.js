/**
 * @param {number} n
 * @return {string}
 */
var countAndSay = function(n) {

    if (n === 1) {
        return '1';
    }
    return sayAndCount('1',1,n);
};

var sayAndCount = function (s, index , n) {

    var temp = [];
    var last = '';
    var l = 0;
    for (var i = 0; i < s.length; i++) {

        if (l === 0){
          l++;
          last = s.charAt(i);
        }else {
            if (s.charAt(i) === last) {
                l++;
            }else {
                temp.push(l+'');
                temp.push(last);
                l=1;
                last = s.charAt(i);
            }
        }

        if (s.length -1 === i) {
            temp.push(l+'');
            temp.push(last);
        }
    }

    index++;
    s = temp.join('');
    // console.log('index='+index+' res='+temp);
    if (index !== n) {
       return sayAndCount(s,index,n);
    }else {
        return s;
    }
}

countAndSay(10);