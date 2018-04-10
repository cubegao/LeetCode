/**
 Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

 Note: You may not slant the container and n is at least 2.
 */

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