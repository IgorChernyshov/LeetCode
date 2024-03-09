import UIKit

let input = "[()]"

func isValid(_ s: String) -> Bool {
	var parenthesesStack = [Character]()
	let parenthesesMap: [Character: Character] = ["]": "[", ")": "(", "}": "{"]

	for character in s {
		if parenthesesMap.values.contains(character) {
			parenthesesStack.append(character)
		} else {
			if parenthesesStack.isEmpty {
				return false
			}
			let openingBracket = parenthesesStack.popLast()
			guard parenthesesMap[character] == openingBracket else {
				return false
			}
		}
	}
	return parenthesesStack.isEmpty
}

print(isValid(input))
