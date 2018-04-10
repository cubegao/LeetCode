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
const { buildList } = require('../../Desktop/LeetCode/problem-utils');

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