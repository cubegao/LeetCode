/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
const { buildList, ListNode } = require('../../Desktop/LeetCode/problem-utils');

var swapPairs = function(head) {

    //从后向前递归
    if (head === null) return null;
    if (head.next === null) return head;

    var temp = head.next;
    head.next = swapPairs(temp.next);
    temp.next = head;

    return temp;
};

swapPairs(buildList([1,2,3,4]));