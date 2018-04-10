/**
 Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.

 Note: The solution set must not contain duplicate quadruplets.

 For example, given array S = [1, 0, -1, 0, -2, 2], and target = 0.

 A solution set is:
 [
 [-1,  0, 0, 1],
 [-2, -1, 1, 2],
 [-2,  0, 0, 2]
 ]
 */

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[][]}
 */
var fourSum = function(nums, target) {

    var resSums = [];
    var resStrings = [];
    if (nums.length < 4) return resSums;
    nums.sort((a,b) => a-b);

    for (var i = 0; i < nums.length-3; i++) {

        for (var j = i+1; j < nums.length-2; j++){


            for (var l = j+1, r = nums.length -1; l < r;) {

                // console.log(nums[i] +'+'+ nums[j] +'+'+ nums[l] +'+'+ nums[r]);

                if (nums[i] + nums[j] + nums[l] + nums[r] === target) {
                    var temp = [nums[i],nums[j],nums[l],nums[r]];
                    if (resStrings.indexOf(temp.toString()) === -1) {
                        resSums.push(temp);
                        resStrings.push(temp.toString());
                    }

                    while (nums[l] === nums[l+1]) l++;
                    while (nums[r] === nums[r-1]) r--;
                    l++;
                    r--;
                }

                if (nums[l] + nums[r] < target - nums[i] - nums[j]) {
                    l++;
                }

                if (nums[l] + nums[r] > target - nums[i] - nums[j]) {
                    r--;
                }

            }

        }
    }

    return resSums;

};


var hashMap = {
    Set : function(key,value){this[key] = value},
    Get : function(key){return this[key]},
    Contains : function(key){return this.Get(key) == null?false:true},
    Remove : function(key){delete this[key]}
}

fourSum([0,1,5,0,1,5,5,-4],11);