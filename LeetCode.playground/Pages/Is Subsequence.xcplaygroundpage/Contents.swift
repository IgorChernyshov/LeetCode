import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
	guard !s.isEmpty else { return false }
	let sArray = Array(s)
	var sPointer = 0

	for character in t {
		if sArray[sPointer] == character { sPointer += 1 }
		if sPointer == sArray.count { return true }
	}
	return false
}

isSubsequence("abc", "ahbgdc") // True
isSubsequence("axc", "ahbgdc") // False
