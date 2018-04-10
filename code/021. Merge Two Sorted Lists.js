/**
 Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

 Example:

 Input: 1->2->4, 1->3->4
 Output: 1->1->2->3->4->4
 */

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */

const { buildList, ListNode } = require('../../LeetCode/problem-utils');

var mergeTwoLists = function(l1, l2) {

    if (l1 === null && l2 === null) {
        return null;
    }
    if (l1 === null) return l2;
    if (l2 === null) return l1;

    var res = new ListNode(null);
    var head = res; //这里用了一个新的节点了保存结果的链表，这里为了方便链表的扩充，增加一个临时的节点变量（否则每次加入都要遍历到尾部）

    while (l2  && l1 ) {
        if (l1.val <= l2.val) {
            res.next = new ListNode(l1.val);
            l1 = l1.next;
        }else {
            res.next = new ListNode(l2.val);
            l2 = l2.next;
        }
        res = res.next;
        console.log(res);
        console.log(head);
    }

    if (l1) res.next = l1;
    if (l2) res.next = l2;

    console.log(head);
    return head.next;

};



mergeTwoLists(buildList([1,3,5,7,9]),buildList([2,4,6,8,10]));