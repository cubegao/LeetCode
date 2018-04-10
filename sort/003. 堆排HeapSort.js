var heapSort  = function (s) {

    if (s.length <= 0 || s == null) {
        return s;
    }

    //构建初始堆
    for (var i = s.length; i >= 0 ; i--){
        heapAdjust(s,i,s.length);
    }

    //调整
    for (var i = s.length - 1; i > 0; i--) {
        s[0] = s[i] + (s[i] = s[0])*0;
        heapAdjust(s,0,i);
        console.log(s);
    }

}

//s:待调整的数组
var heapAdjust = function (s,loc,len) {

    var temp = s[loc];
    var child = 2 * loc + 1; //左孩子
    while (child < len) {
        //确定左右孩子中哪个大
        if (child + 1 < len && s[child] < s[child + 1]) {
            child++;
        }

        if (s[loc] < s[child]) {
            s[loc] = s[child];
            loc = child;
            s[loc] = temp;
            child = 2 * loc + 1;
        }else  {
            break;
        }
    }

}

var test = [99, 53, 27, 36, 15, 69, 42, 66];
heapSort(test);