import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
	guard nums.count > 1 else { return false }
	var firstPointer = 0
	var secondPointer = 0
	var dictionary = [Int: Int]()

	while secondPointer < nums.count {
		dictionary[nums[secondPointer], default: 0] += 1
		if dictionary[nums[secondPointer]] == 2 { return true }
		if secondPointer - firstPointer == k {
			dictionary[nums[firstPointer], default: 0] -= 1
			firstPointer += 1
			secondPointer += 1
		} else if secondPointer - firstPointer < k { secondPointer += 1 }
	}
	return false
}


containsNearbyDuplicate([1,2,3,1], 3) // true
containsNearbyDuplicate([1,0,1,1], 1) // true
containsNearbyDuplicate([1,2,3,1,2,3], 2) // false
