import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
	guard let root else { return 0 }
	return max(maxDepth(root.left), maxDepth(root.right)) + 1
}

let tree1 = BinaryTree.make(from: [3, 9, 20, nil, nil, 15, 7])
print(maxDepth(tree1)) // 3

let tree2 = BinaryTree.make(from: [1, nil, 2])
print(maxDepth(tree2)) // 2
