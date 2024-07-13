import Foundation

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
	guard let list1, let list2 else { return list1 ?? list2 }
	if list1.val <= list2.val {
		list1.next = mergeTwoLists(list1.next, list2)
		return list1
	} else {
		list2.next = mergeTwoLists(list1, list2.next)
		return list2
	}
}

let list1 = makeLinkedList(values: [1,2,4])
let list2 = makeLinkedList(values: [1,3,4])
mergeTwoLists(list1, list2)?.printValues()
