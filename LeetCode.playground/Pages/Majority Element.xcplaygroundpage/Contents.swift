
func majorityElement(_ nums: [Int]) -> Int {
	let middle = nums.count / 2
	let sortedNums = nums.sorted()
	return sortedNums[middle]
}

func majorityElement2(_ nums: [Int]) -> Int {
	var candidate = 0
	var votes = 0

	for num in nums {
		if votes == 0 {
			candidate = num
		}
		votes += (candidate == num) ? 1 : -1
	}

	return candidate
}

majorityElement2([3,2,3]) // 3
majorityElement2([2,2,1,1,1,2,2]) // 2
