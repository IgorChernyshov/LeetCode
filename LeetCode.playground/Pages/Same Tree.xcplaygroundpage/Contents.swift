import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
	p == q
}

extension TreeNode: Equatable {

	public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
		lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
	}
}

print(isSameTree(BinaryTree.make(from: [1, 2, 3]), BinaryTree.make(from: [1, 2, 3]))) // true
print(isSameTree(BinaryTree.make(from: [1, 2]), BinaryTree.make(from: [1, nil, 2]))) // false
print(isSameTree(BinaryTree.make(from: [1, 2, 1]), BinaryTree.make(from: [1, 1, 2]))) // false
