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

const { buildList, ListNode } = require('../../Desktop/LeetCode/problem-utils');

var reverseKGroup = function(head, k) {

    if (head === null) return null;
    var current = head;
    for (var i = 0; i < k; i++) {
        if (!current) return head;
        current = current.next;
    }

    var newHead = reverse(head,current);
    head.next = reverseKGroup(current,k); //之前我们的head是在1上，现在局部逆序之后，它就在1上了。这时候我们使用


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