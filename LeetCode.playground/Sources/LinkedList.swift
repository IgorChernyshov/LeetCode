import Foundation

public class ListNode {
	public var val: Int
	public var next: ListNode?

	public init(_ val: Int) {
		self.val = val
	}

	public func printValues() {
		var current = self
		while true {
			print(current.val)
			guard let next = current.next else { return }
			current = next
		}
	}
}

public func makeLinkedList(values: [Int], pos: Int = -1) -> ListNode? {
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
