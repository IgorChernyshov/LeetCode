import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
	var letters = [Character: Int]()
	magazine.forEach { letters[$0] = (letters[$0] ?? 0) + 1 }
	ransomNote.forEach { letters[$0] = (letters[$0] ?? 0) - 1 }
	return letters.values.allSatisfy { $0 >= 0 }
}

canConstruct("aa", "aac")
