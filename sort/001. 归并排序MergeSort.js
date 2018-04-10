var mergeSort = function (s) {
    var temp = [];
    sort(s,0,s.length-1,temp);
}

var sort = function (s,left,right,temp) {
    if (left < right) {
        var mid = Math.floor((left + right) / 2);
        sort(s,left,mid,temp);
        sort(s,mid+1,right,temp);
        merge(s,left,mid,right,temp);
    }
}

var merge = function (s,left,mid,right,temp) {
    var t = 0;
    var i = left;
    var j = mid + 1;


    while (i <= mid && j <= right) {
        if (s[i] <= s[j]) {
            temp[t++] = s[i++];
        }else {
            temp[t++] = s[j++];
        }
    }

    while (i <= mid) {
        temp[t++] = s[i++];
    }

    while (j <= right) {
        temp[t++] = s[j++];
    }

    console.log(temp);

    t = 0;
    while (left <= right){
        s[left++] = temp[t++];
    }

    // console.log(s);
}

var test = [99, 53, 27, 36, 15, 69, 42, 66];
mergeSort(test);