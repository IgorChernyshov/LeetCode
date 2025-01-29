import Foundation

func readLine() -> String? { "f AoAO  AF" }

let input = readLine()!.replacingOccurrences(of: " ", with: "").lowercased()

func isPalindrome(_ input: String) {
	let inputArray = Array(input)

	var startIndex = 0
	var endIndex = inputArray.count - 1

	while startIndex < endIndex {
		if inputArray[startIndex] == inputArray[endIndex] {
			startIndex += 1
			endIndex -= 1
		} else {
			print("It is not a palindrome")
			return
		}
	}

	print("It is a palindrome")
}

func isPalindromeStringReversal(_ input: String) {
	print(input == String(input.reversed()) ? "It is a palindrome" : "It is not a palindrome")
}

isPalindromeStringReversal(input)
