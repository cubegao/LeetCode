/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

const { buildList, ListNode } = require('../../LeetCode/problem-utils');

/**
 * @param {ListNode} head
 * @return {boolean}
 */
var hasCycle = function(head) {

    if (head == null) return false;

    var slow = head, fast = head;
    while (slow.next && fast.next) {
        slow = slow.next;
        fast = fast.next;

        if (fast.next) {
            fast = fast.next;
        }else {
            return false;
        }

        if (fast === slow) {
            return true;
        }

    }

    return false;
};