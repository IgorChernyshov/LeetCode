import Foundation

let strs = ["flower","flow","flight"]
let expectedResult = "fl"

func longestCommonPrefix(_ strs: [String]) -> String {
	guard strs.count > 0 else { return "" }

	let stringsArray = strs.map { Array($0) }
	var result = ""
	var index = 0

	while true {
		var currentCharacter: Character? = nil
		for characters in stringsArray {
			if index >= characters.count {
				return result
			} else {
				if currentCharacter == nil {
					currentCharacter = characters[index]
				} else if characters[index] != currentCharacter {
					return result
				}
			}
		}
		result += String(currentCharacter!)
		index += 1
	}

	return result
}

print(longestCommonPrefix(strs) == expectedResult)

// MARK: - Trie

class Trie {

	private let root = Node(value: nil, parent: nil)

	init() {}

	func insert(_ word: String) {
		var current = root
		for char in word {
			if current.children[char] == nil {
				current.children[char] = Node(value: char, parent: current)
			}
			current = current.children[char]!
		}
		current.isTerminating = true
	}

	func longestCommonPrefix() -> String {
		var prefix = [Character]()
		var currentNode = root
		while true {
			guard currentNode.children.count == 1, !currentNode.isTerminating else { return String(prefix) }
			currentNode = currentNode.children.first!.value
			prefix.append(currentNode.value!)
		}
		return String(prefix)
	}
}

extension Trie {

	final class Node {

		var value: Character?

		weak var parent: Node?
		var children = [Character: Node]()

		var isTerminating = false

		init(value: Character?, parent: Node?) {
			self.value = value
			self.parent = parent
		}
	}
}

let trie = Trie()
trie.insert("apple")
trie.insert("app")
trie.longestCommonPrefix()

// MARK: - Examine

class Solution {
	func longestCommonPrefix(_ strs: [String]) -> String {
		var prefix = strs[0]
		for str in strs {
			while !str.hasPrefix(prefix) {
				prefix.removeLast()
			}
		}
		return prefix
	}
}

//class Solution {
//	func longestCommonPrefix(_ strs: [String]) -> String {
//
//		let s = strs.sorted(by: <)
//		let first = s.first ?? ""
//		let last = s.last ?? ""
//		var str = ""
//		var i = 0
//
//		if first.isEmpty || last.isEmpty {
//			return ""
//		}
//
//		while i<first.count && i < last.count {
//			var f = first[first.index(first.startIndex, offsetBy: i)]
//			var l = last[last.index(last.startIndex, offsetBy: i)]
//			if f == l {
//				str += "\(f)"
//				i += 1
//			} else {
//				break
//			}
//		}
//
//		return str
//	}
//}
