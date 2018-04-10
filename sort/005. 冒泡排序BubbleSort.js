var bubbleSort = function (s) {
    if(s.length <= 1 || s == null) {
        return s;
    }
    for(var i = 0; i < s.length-1; i++){

        for(var j = 0; j < s.length-1-i; j++) {

            if(s[j] > s[j+1]){
                s[j] = s[j+1] + (s[j+1] = s[j]) *0;
            }

            console.log(s);
        }

    }
}


var test = [99, 53, 27, 36, 15, 69, 42, 66];
bubbleSort(test);