public final class TreeNode {

	public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

	public init(_ val: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

public enum BinaryTree {

	public static func make(from array: [Int?]) -> TreeNode {
		let nodes: [TreeNode?] = array.map {
			if let value = $0 { TreeNode(value) } else { nil }
		}
		for (index, node) in nodes.enumerated() {
			node?.left = nodes[safe: index * 2 + 1] ?? nil
			node?.right = nodes[safe: index * 2 + 2] ?? nil
		}
		return nodes[0]!
	}
}

public extension Collection {

	subscript (safe index: Index) -> Element? {
		indices.contains(index) ? self[index] : nil
	}
}
