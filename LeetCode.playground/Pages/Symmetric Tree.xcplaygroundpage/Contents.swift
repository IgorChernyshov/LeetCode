import Foundation

func isSymmetric(_ root: TreeNode?) -> Bool {
	isMirror(left: root, right: root)
}

private func isMirror(left: TreeNode?, right: TreeNode?) -> Bool {
	if left == nil && right == nil { return true }
	guard left?.val == right?.val else { return false }
	return isMirror(left: left?.left, right: right?.right) && isMirror(left: left?.right, right: right?.left)
}

isSymmetric(BinaryTree.make(from: [1, 2, 2, 3, 4, 4, 3])) // true
isSymmetric(BinaryTree.make(from: [1, 2, 2, nil, 3, nil, 3])) // false
