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
