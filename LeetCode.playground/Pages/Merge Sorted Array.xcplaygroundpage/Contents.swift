import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
	var last1 = m - 1
	var last2 = n - 1
	var current = m + n - 1

	while last1 >= 0 && last2 >= 0 {
		if nums1[last1] >= nums2[last2] {
			nums1[current] = nums1[last1]
			last1 -= 1
		} else {
			nums1[current] = nums2[last2]
			last2 -= 1
		}
		current -= 1
	}

	while last2 >= 0 {
		nums1[current] = nums2[last2]
		last2 -= 1
		current -= 1
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
