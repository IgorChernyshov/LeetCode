// Find the Index of the First Occurrence in a String

func strStr(_ haystack: String, _ needle: String) -> Int {
	let haystackArray = Array(haystack)
	let needleArray = Array(needle)
	guard haystackArray.count >= needleArray.count else { return -1 }

	var firstPointer = 0
	var secondPointer = 0

	while firstPointer < haystackArray.count {
		if haystackArray[firstPointer] == needleArray[secondPointer] {
			firstPointer += 1
			secondPointer += 1
		} else {
			firstPointer -= secondPointer
			firstPointer += 1
			secondPointer = 0
		}
		if secondPointer == needleArray.count {
			return firstPointer - secondPointer
		}
	}
	return -1
}

strStr("sadbutsad", "sad") // 0
strStr("leetcode", "leeto") // -1
strStr("mississippi", "issip") // 4
