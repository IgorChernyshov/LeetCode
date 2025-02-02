import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
	var prefix = strs.first ?? ""

	for string in strs.dropFirst() {
		while !string.hasPrefix(prefix) {
			prefix = String(prefix.dropLast())
			if prefix.isEmpty { return prefix }
		}
	}

	return prefix
}

longestCommonPrefix(["flower","flow","flight"]) // "fl"
longestCommonPrefix(["dog","racecar","car"]) // ""
