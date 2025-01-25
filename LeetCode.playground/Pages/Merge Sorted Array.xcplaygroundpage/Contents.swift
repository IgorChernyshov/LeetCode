import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
	var nums1pointer = m - 1
	var nums2pointer = n - 1
	var mergePointer = m + n - 1

	while nums2pointer >= 0 {
		if nums1pointer >= 0 && nums1[nums1pointer] > nums2[nums2pointer] {
			nums1[mergePointer] = nums1[nums1pointer]
			nums1pointer -= 1
		} else {
			nums1[mergePointer] = nums2[nums2pointer]
			nums2pointer -= 1
		}
		mergePointer -= 1
	}
}

var array1 = [1, 2, 3, 0, 0, 0]
var array2 = [2, 5, 6]
merge(&array1, 3, array2, 3)
print(array1) // [1,2,2,3,5,6]

array1 = [1]
array2 = []
merge(&array1, 1, array2, 0)
print(array1) // [1]

array1 = [0]
array2 = [1]
merge(&array1, 0, array2, 1)
print(array1) // [1]
