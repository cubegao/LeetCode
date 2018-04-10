/**
 There are two sorted arrays nums1 and nums2 of size m and n respectively.

 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

 Example 1:
 nums1 = [1, 3]
 nums2 = [2]

 The median is 2.0
 Example 2:
 nums1 = [1, 2]
 nums2 = [3, 4]

 The median is (2 + 3)/2 = 2.5
 */

/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findMedianSortedArrays = function(nums1, nums2) {

    var s = nums1.concat(nums2);
    var temp = [];
    var i = 0;
    var j = nums1.length;
    var t = 0;
    var mid = 0;

    while (i <= nums1.length-1 && j <= s.length-1) {
        if (s[i] <= s[j]) {
            temp[t++] = s[i++];
        }else  {
            temp[t++] = s[j++];
        }
    }


    while (i <= nums1.length-1) {
        temp[t++] = s[i++];
    }

    while (j <= s.length-1) {
        temp[t++] = s[j++];
    }

    t = 0;
    while (t <= s.length - 1) {
        s[t] = temp[t++];
    }

    if (s.length %2 === 0) {
        mid = (s[s.length/2]+s[s.length/2-1])/2;
    }else  {
        mid = s[Math.floor(s.length/2)];
    }

    console.log(mid);

    return mid;

};

var test1 = [2];
var test2 = [];
findMedianSortedArrays(test1,test2);
