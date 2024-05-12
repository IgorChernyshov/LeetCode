import Foundation

func wordPattern(_ pattern: String, _ s: String) -> Bool {
	let words = s.components(separatedBy: " ")
	guard pattern.count == words.count else { return false }

	var wordsMap = [Character: String]()
	for (index, character) in pattern.enumerated() {
		let currentWord = words[index]
		if let mappedWord = wordsMap[character] {
			if mappedWord == currentWord {
				continue
			} else {
				return false
			}
		} else {
			wordsMap[character] = currentWord
			continue
		}
	}
	return wordsMap.values.count == Set(wordsMap.values).count
}

wordPattern("abba", "dog cat cat dog") // true
wordPattern("abba", "dog cat cat fish") // false
wordPattern("aaaa", "dog cat cat fish") // false
