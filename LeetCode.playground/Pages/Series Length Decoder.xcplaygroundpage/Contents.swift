import Foundation

func readLine() -> String? { "A15BA5" }

let input = readLine()!

func decodeSeriesLength(_ input: String) {
	let characters = Array(input)
	var length = 0
	var pointer = 0

	while pointer < characters.count {
		let character = characters[pointer]
		pointer += 1

		var numberString = ""
		while pointer < characters.count, characters[pointer].isNumber {
			numberString.append(characters[pointer])
			pointer += 1
		}

		let count = numberString.isEmpty ? 1 : Int(numberString)!
		length += count
	}

	print(length)
}

decodeSeriesLength(input)
