/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode[]} lists
 * @return {ListNode}
 */
const { buildList, ListNode } = require('../../Desktop/LeetCode/problem-utils');

var mergeKLists = function(lists) {

    for (var i = 0; i < lists.length;) {
        if (lists[i]) {
            i++;
        } else {
            lists.splice(i,1);
        }
    }

    if (lists.length === 0) return null;

    var temp = [];

    while (lists.length > 1) {
        if (lists.length %2 !== 0) {
            lists.push(null);
        }
        for (var i = 0,j = lists.length - 1; i < j && i !== j;) {
            temp.push(mergeTwoList(lists[i++],lists[j--]));
        }
        lists = temp;
        temp = [];
    }

    // console.log(list);

    return lists[0];
};


var mergeTwoList = function (l1,l2) {

    if (!l1 && !l2) return null;
    if (!l1) return l2;
    if (!l2) return l1;

    var l = new ListNode(null);
    var head = l;

    while (l1 && l2) {

        if (l1.val <= l2.val) {
            l.next = new ListNode(l1.val);
            l1 = l1.next;
        }else {
            l.next = new ListNode(l2.val);
            l2 = l2.next;
        }

        l = l.next;
    }

    if (l1) l.next = l1;
    if (l2) l.next = l2;

    return head.next;
};

mergeKLists([buildList([])]);