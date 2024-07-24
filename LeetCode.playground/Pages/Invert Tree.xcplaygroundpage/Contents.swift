import Foundation

func invertTree(_ root: TreeNode?) -> TreeNode? {
	guard let root else { return nil }
	let right = invertTree(root.right)
	let left = invertTree(root.left)
	root.left = right
	root.right = left
	return root
}

invertTree(BinaryTree.make(from: [2, 1, 3]))
invertTree(BinaryTree.make(from: [4, 2, 7, 1, 3, 6, 9]))
