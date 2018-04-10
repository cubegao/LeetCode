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