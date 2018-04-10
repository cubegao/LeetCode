/**
 Given a linked list, reverse the nodes of a linked list k at a time and return its modified list.

 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes in the end should remain as it is.

 You may not alter the values in the nodes, only nodes itself may be changed.

 Only constant memory is allowed.

 For example,
 Given this linked list: 1->2->3->4->5

 For k = 2, you should return: 2->1->4->3->5

 For k = 3, you should return: 3->2->1->4->5
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
 * @param {number} k
 * @return {ListNode}
 */

const { buildList, ListNode } = require('../../LeetCode/problem-utils');

var reverseKGroup = function(head, k) {

    if (head === null) return null;
    var current = head;
    for (var i = 0; i < k; i++) {
        if (!current) return head;
        current = current.next;
    }

    var newHead = reverse(head,current);
    head.next = reverseKGroup(current,k); //之前我们的head是在1上，现在局部逆序之后，它就在1上了。这时候我们使用

    console.log(newHead);
    return newHead;

};

var reverse = function (start , end) {

    var head = end;
    while (start !== end) {
        var temp = start.next;
        start.next = head;
        head = start;
        start = temp;
    }

    return head;
};

reverseKGroup(buildList([1,2,3,4,5,6]),3);