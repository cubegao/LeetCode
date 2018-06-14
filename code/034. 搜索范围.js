/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var searchRange = function(nums, target) {

    var l = 0;
    var r = nums.length -1;

    while (nums[l]<target) {
        l++;
    }

    while (nums[r]>target) {
        r--;
    }

    if (l <= r) {
        return [l,r];
    }else {
        return [-1,-1];
    }

};

var s = searchRange([5,7,7,8,8,10],8);
console.log(s);