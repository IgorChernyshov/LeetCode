import UIKit

var nums1 = [1,2,3,0,0,0]
let m = 3
let nums2 = [2,5,6]
let n = 3

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
	var firstPointer = m - 1
	var secondPointer = n - 1
	var mergePointer = m + n - 1

	while firstPointer >= 0 && secondPointer >= 0 {
		if nums1[firstPointer] > nums2[secondPointer] {
			nums1[mergePointer] = nums1[firstPointer]
			firstPointer -= 1
		} else {
			nums1[mergePointer] = nums2[secondPointer]
			secondPointer -= 1
		}
		mergePointer -= 1
	}

	while secondPointer >= 0 {
		nums1[mergePointer] = nums2[secondPointer]
		secondPointer -= 1
		mergePointer -= 1
	}
}

merge(&nums1, m, nums2, n)
