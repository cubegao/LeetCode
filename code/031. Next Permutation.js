/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
var nextPermutation = function(nums) {

    var change = -1;

    for (var i = nums.length-1; i > 0; i--) {
        if (nums[i] > nums[i-1]) {
            var temp = nums[i-1];
            var low = nums[i];
            var loc = i;
            for (var j = i; j< nums.length; j++) {
                if (nums[j] > temp && nums[j] < low) {
                    low = nums[j];
                    loc = j;
                }
            }
            console.log(nums[i-1]+' loc='+nums[loc]+' '+loc);

            nums[i-1] = nums[loc] + (nums[loc] = nums[i-1]) * 0;
            change = i;
            break;
        }
    }
    console.log(nums);


    for (var k = change; k < nums.length-1; k++) {
        for (var l = k+1; l < nums.length; l++) {
            if (nums[k] > nums[l]) {
                nums[l] = nums[k] + (nums[k] = nums[l]) *0;
            }
        }
    }

    if (change === -1) nums.sort((a,b) => a-b);
    console.log(nums);
};

nextPermutation([1,3,2]);
