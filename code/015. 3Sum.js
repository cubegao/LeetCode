/**
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

 Note: The solution set must not contain duplicate triplets.

 For example, given array S = [-1, 0, 1, 2, -1, -4],

 A solution set is:
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 */

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var threeSum = function(nums) {


    var resSums = [];

    if (nums.length < 3) return resSums;

    nums.sort((a,b) => a-b);

    for (var i = 0; i < nums.length; i++) {
        if (i > 0 && nums[i] === nums[i-1]) continue;

        for (var l = i + 1, r = nums.length-1; l !== r && l < r ;) {
            if (nums[i] + nums[l] + nums[r] === 0) {
                resSums.push([nums[i],nums[l],nums[r]]);

                while (nums[l] === nums[l+1]){
                    l++;
                }
                while (nums[r] === nums[r-1]){
                    r--;
                }
                l++;
                r--;
            }

            if (nums[l] + nums[r] > -nums[i]){
                r--;
            }

            if (nums[l] + nums[r] < -nums[i]){
                l++;
            }


        }

    }
    // console.log(resSums);
    return resSums;
};


var test = [-1,0,-2,1,3,2,-1];
threeSum(test);