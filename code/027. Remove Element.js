/**
 Given an array and a value, remove all instances of that value in-place and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

 The order of elements can be changed. It doesn't matter what you leave beyond the new length.

 Example:

 Given nums = [3,2,2,3], val = 3,

 Your function should return length = 2, with the first two elements of nums being 2.
 */

/**
 * @param {number[]} nums
 * @param {number} val
 * @return {number}
 */
var removeElement = function(nums, val) {

    if (nums.length === 0) return 0;
    if (nums.length === 1) {
        if (nums[0] === val) {
            return 0;
        }else {
            return 1;
        }
    }

    for (var i = 0,j = nums.length-1; i < j && i !== j;) {
        while (nums[j] === val && j !== i) {
            j--;
        }

        if (nums[i] === val && nums[j] !== val) {
            nums[i] = nums[j] + ( nums[j] = nums[i] )*0;
        }

        i++;
    }

    console.log(nums);

    var temp = nums.length-1;
    while (nums[temp] === val){
        temp--;
    }

    console.log(temp+1);
    return temp+1;
};


removeElement([3,3,2,3,2,3,2,3],3);