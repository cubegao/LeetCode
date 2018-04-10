var quickSort = function (s , left , right) {
    if(left<right){
        var mid = partition(s,left,right);
        quickSort(s,left,mid-1);
        quickSort(s,mid+1,right);
    }
}



var partition = function (s , left , right) {

    var temp = s[left];

    while (left < right){

        while (right > left && s[right] >= temp) {
            right --;
        }
        s[left] = s[right];

        console.log(s);

        while (left < right && s[left] <= temp) {
            left++;
        }
        s[right] = s[left];

        console.log(s);

    }

    s[left] = temp;
    return temp;
}


var test = [99, 53, 27, 36, 15, 69, 42, 66];
quickSort(test,0,7);