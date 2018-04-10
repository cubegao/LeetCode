/**
 Given a linked list, remove the nth node from the end of list and return its head.

 For example,

 Given linked list: 1->2->3->4->5, and n = 2.

 After removing the second node from the end, the linked list becomes 1->2->3->5.
 Note:
 Given n will always be valid.
 Try to do this in one pass.
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
 * @param {number} n
 * @return {ListNode}
 */
const { buildList } = require('../../LeetCode/problem-utils');

var removeNthFromEnd = function(head, n) {

    if (head == null) return null;
    var total = 1, tmp = head;
    while (tmp = tmp.next) ++total;
    if (total === n) {
        head = head.next;
        return head;
    }

    var  i = 0;
    var runner = head;
    while (runner !== null && i < n) {
        runner = runner.next;
        i++;
    }


    if (i < n) {
        return null;
    }

    if (runner == null) {
        return null;
    }

    var walker = head;
    while (runner.next !== null) {
        runner = runner.next;
        walker = walker.next;
    }

    walker.next = walker.next.next;

    console.log(head);
    return head;
};

removeNthFromEnd(buildList([1,2]),2);