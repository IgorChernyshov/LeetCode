import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
	// Time & Space Complexity O(s+t)
	s.reducedToCharacterCountMap == t.reducedToCharacterCountMap
}

private extension String {
	var reducedToCharacterCountMap: [Character: Int] {
		reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
	}
}

isAnagram("anagram", "nagaram") // true
isAnagram("rat", "car") // false
