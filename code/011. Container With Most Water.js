/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function(height) {

    var maxArea = 0;

    if (height.length < 2){
        return maxArea;
    }

    for (var i = 0, j = height.length-1; i !== j;) {
        if (height[i] > height[j]){
            maxArea = Math.max(maxArea,Math.min(height[i],height[j])*(j-i));
            j--;
        }else {
            maxArea = Math.max(maxArea,Math.min(height[i],height[j])*(j-i));
            i++;
        }
    }

    // console.log(maxArea);
    return maxArea;

};

var test = [1,2,3,4,5,6,7,8,9];
maxArea(test);