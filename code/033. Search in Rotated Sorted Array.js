/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var search = function(nums, target) {


    var l = 0;
    var r = nums.length -1;

    while (nums[l] < nums[l+1] && nums[l]<target) {
        l++;
    }

    while (nums[r] > nums[r-1] && nums[r]>target) {
        r--;
    }

    if (nums[l] === target) return l;
    if (nums[r] === target) return r;

    return -1;

};

var s = search([4,5,6,7,0,1,2,3],0);
console.log(s);