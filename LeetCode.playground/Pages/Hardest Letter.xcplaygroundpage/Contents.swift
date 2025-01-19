import Foundation

func hardestLetter(lettersCount: Int, letters: String, timings: [Int]) -> Character {
	guard lettersCount > 0 else {
		preconditionFailure("Array must not be empty")
	}
	var charMap = [Int: Character]()
	var currentTime = 0
	for (time, letter) in zip(timings, letters) {
		charMap[time - currentTime] = letter
		currentTime = time
	}
	let hardestLetterTime = charMap.keys.max()!
	return charMap[hardestLetterTime]!
}

print(hardestLetter(lettersCount: 3, letters: "abc", timings: [10, 11, 12])) // a
print(hardestLetter(lettersCount: 3, letters: "adc", timings: [1, 15, 7])) // d
print(hardestLetter(lettersCount: 4, letters: "bcda", timings: [1, 2, 4, 6])) // a
print(hardestLetter(lettersCount: 5, letters: "aabbc", timings: [1, 3, 5, 7, 8])) // b
