/**
 Given a linked list, swap every two adjacent nodes and return its head.

 For example,
 Given 1->2->3->4, you should return the list as 2->1->4->3.

 Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.


 */

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
const { buildList, ListNode } = require('../../LeetCode/problem-utils');

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