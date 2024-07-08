// MARK: - List
class ListNode {
	var val: Int
	var next: ListNode?

	init(_ val: Int) {
		self.val = val
	}

	func printValues() {
		var current = self
		while true {
			print(current.val)
			guard let next = current.next else { return }
			current = next
		}
	}
}

// MARK: - Problem
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

// MARK: - Helpers
func makeLinkedList(values: [Int], pos: Int) -> ListNode? {
	var head: ListNode?
	var last: ListNode?
	var cycledNode: ListNode?

	for (index, value) in values.enumerated() {
		if head == nil {
			head = ListNode(value)
			last = head
			continue
		}
		let nextNode = ListNode(value)
		last?.next = nextNode
		last = nextNode

		if index == pos {
			cycledNode = nextNode
		}
	}
	last?.next = cycledNode
	return head
}

let list = makeLinkedList(values: [3, 2, 0, -4], pos: 1)
hasCycle(list)
