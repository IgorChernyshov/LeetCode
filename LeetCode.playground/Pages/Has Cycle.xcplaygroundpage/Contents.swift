func hasCycle(_ head: ListNode?) -> Bool {
	var turtle = head
	var hare = head?.next
	while turtle != nil, hare != nil {
		if turtle === hare { return true }
		turtle = turtle?.next
		hare = hare?.next?.next
	}
	return false
}

let list = makeLinkedList(values: [3, 2, 0, -4], pos: 1)
hasCycle(list)
