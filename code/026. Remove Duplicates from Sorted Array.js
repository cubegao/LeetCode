/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {

    if (nums.length === 0) return 0;
    var i = 0;
    for (var j = 1; j < nums.length; j++) {
        if (nums[i] !== nums[j]) {
            i++;
            nums[i] = nums[j];
        }
    }

    console.log(nums);
    return i + 1;
};


removeDuplicates([1,2,3,4,5,5,5,5,6]);