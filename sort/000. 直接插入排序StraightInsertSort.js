

var straightInsertSort = function(s) {

    if(s.length <=1 || s == null) {
        return s;
    }

    var j = 0;
    for(var i = 1;i < s.length; i++) {
        j = i;
        while(j > 0 && s[j]<s[j-1]) {
            s[j] = s[j-1] + (s[j-1] = s[j])*0;
            j--;
        }
        console.log(s);
    }

};

var test = [99, 53, 27, 36, 15, 69, 42, 66];
straightInsertSort(test);
