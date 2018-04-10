var shellSort = function (s) {

    if(s.length <= 0 || s == null) {
        return s;
    }

    var length = s.length,
        gap = Math.floor(length / 2);

    while (gap > 0) {

        for (var i = gap; i < length; i++) {
            
            for (var  j = i; 0 < j&&(j-gap>-1); j -= gap) {

                console.log(gap+'+'+i+'+'+j+'+'+(j-gap));
                if (s[j - gap] > s[j]) {
                    s[j] = s[j-gap] + (s[j-gap] = s[j])*0;
                } else {

                    break;
                }

                console.log(s);

            }
        }


        gap = Math.floor(gap / 2);
        // console.log('/2');

    }

}

var test = [8, 7, 6, 5, 4, 3, 2, 1];
shellSort(test);