
func majorityElement(_ nums: [Int]) -> Int {
	let middle = nums.count / 2
	let sortedNums = nums.sorted()
	return sortedNums[middle]
}

majorityElement([3,2,3]) // 3
majorityElement([2,2,1,1,1,2,2]) // 2
