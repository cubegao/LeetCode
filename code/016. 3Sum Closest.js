/**
 Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.

 For example, given array S = {-1 2 1 -4}, and target = 1.

 The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 */

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var threeSumClosest = function(nums, target) {

    var closest = 0;

    if (nums.length < 3) return closest;
    nums.sort((a,b) => a-b);
    closest = nums[0]+nums[1]+nums[2];

    for (var i = 0; i < nums.length; i++) {

        for (var l = i + 1, r = nums.length - 1; l < r;) {
            var temp =  nums[l] + nums[r] + nums[i];
            if (Math.abs(target-temp) <= Math.abs(target-closest)) {
                closest = temp;
            }

            if (temp === target) {

                return target;
            }

            if (temp > target) {

                r--;
            }

            if (temp < target) {

                l++;
            }

        }
    }
    // console.log(closest);
    return closest;
};

threeSumClosest([-1,0,1,1,55],3);
