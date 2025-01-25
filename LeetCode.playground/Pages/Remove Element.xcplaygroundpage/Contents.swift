import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
	var slow = 0
	var fast = 0

	while fast < nums.count {
		if nums[fast] != val {
			nums.swapAt(slow, fast)
			slow += 1
		}
		fast += 1
	}

	return slow
}

var input = [3, 2, 2, 3]
removeElement(&input, 3) // 2

var input2 = [0, 1, 2, 2, 3, 0, 4, 2]
removeElement(&input2, 2) // 5
