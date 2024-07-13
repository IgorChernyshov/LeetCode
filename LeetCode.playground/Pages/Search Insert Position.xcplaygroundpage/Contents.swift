import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
	var low = 0
	var high = nums.count
	var mid: Int

	while low < high {
		mid = (low + high) / 2
		if nums[mid] < target {
			low = mid + 1
		} else {
			high = mid
		}
	}
	return low
}

searchInsert([1,3,5,6], 5) // 2
searchInsert([1,3,5,6], 2) // 1
searchInsert([1,3,5,6], 7) // 4
