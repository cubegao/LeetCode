var simpleSelectSort = function (s) {

    if (s.length <= 1 || s == null) {
        return s;
    }

    var j = 0;
    while (j < s.length) {

        var min = s[j];
        var minIndex = j;
        for (var i = j; i < s.length; i++) {
            if (min > s[i]) {
                min = s[i];
                minIndex = i;
            }
        }

        if (j !== minIndex) {
            s[j] = s[minIndex] + (s[minIndex] = s[j])*0;
            console.log(s);
        }
        j++;

    }

}


var test = [99, 53, 27, 36, 15, 69, 42, 66];
simpleSelectSort(test);