import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
	var low = 0
	var high = nums.count - 1
	while low <= high {
		let middle = (low + high) / 2
		if nums[middle] == target {
			return middle
		}
		if nums[middle] > target {
			high = middle - 1
			continue
		}
		if nums[middle] < target {
			low = middle + 1
			continue
		}
	}
	return low
}

let result = searchInsert([1,3,5,6,7], 2)
print(result)
