import Foundation

func easySuggest(words: [String]) -> Character {
	let firstLetterMap = words.reduce(into: [Character: Int]()) { result, word in
		result[word.first!, default: 0] += 1
	}
	return firstLetterMap.max { $0.value < $1.value }!.key
}

print(easySuggest(words: ["sayHello", "println", "sleep", "spendMoney", "log"]))
