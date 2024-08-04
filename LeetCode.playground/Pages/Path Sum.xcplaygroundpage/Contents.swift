import Foundation

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
	guard let root else { return false }
	if root.left == nil && root.right == nil { return root.val == targetSum }
	return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
}

hasPathSum(BinaryTree.make(from: [5,4,8,11,nil,13,4,7,2,nil,nil,nil,1]), 22) // true
hasPathSum(BinaryTree.make(from: [1,2,3]), 5) // false
hasPathSum(BinaryTree.make(from: [1,2]), 1) // false
