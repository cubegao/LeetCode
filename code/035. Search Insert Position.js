/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function(nums, target) {

    var start = 0;
    var end = nums.length;

    while (start < end) {
        var mid = Math.floor((start+end)/2);

        if (nums[mid] === target || (nums[mid] > target && (mid === 0 || nums[mid-1] < target))) {
            return mid;
        }

        if (mid === nums.length -1 && nums[mid] < target) {
            return mid+1;
        }

        if (nums[mid] < target) {
            start = mid +1;
        }else {
            end = mid;
        }
    }
};

var s = searchInsert([1,3,5],2);
console.log(s);