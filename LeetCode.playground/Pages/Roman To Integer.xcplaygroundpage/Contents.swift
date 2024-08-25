import Foundation

func romanToInt(_ s: String) -> Int {
	let dictionary: [Character: Int] = [
		"I": 1,
		"V": 5,
		"X": 10,
		"L": 50,
		"C": 100,
		"D": 500,
		"M": 1000
	]
	var result = 0
	var previous: Character = " "

	for character in s {
		if previous == "I" && (character == "V" || character == "X") {
			result += (dictionary[character]! - dictionary[previous]! * 2)
		} else if previous == "X" && (character == "L" || character == "C") {
			result += (dictionary[character]! - dictionary[previous]! * 2)
		} else if previous == "C" && (character == "D" || character == "M") {
			result += (dictionary[character]! - dictionary[previous]! * 2)
		} else {
			result += dictionary[character]!
		}
		previous = character
	}
	return result
}

romanToInt("III") == 3
romanToInt("LVIII") == 58
romanToInt("IV") == 4
