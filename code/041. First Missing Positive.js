/**
 * @param {number[]} nums
 * @return {number}
 */
var firstMissingPositive = function(nums) {

    var i = 0;
    while (i < nums.length) {
        if (nums[i] !== i+1 && nums[i] > 0 && nums[nums[i]-1] !== nums[i] && nums[i] < nums.length) {
            nums[i] = nums[nums[i]-1] + (nums[nums[i]-1] = nums[i]) *0;
        }else {
            i++;
        }
    }

    console.log(nums);

    for (var j = 0; j < nums.length; j++) {
        if (nums[j]-1 !== j)
            return j+1;
    }
    return nums.length+1;

};


firstMissingPositive([1,1]);
