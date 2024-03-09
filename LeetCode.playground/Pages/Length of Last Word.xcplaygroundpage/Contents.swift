func lengthOfLastWord(_ s: String) -> Int {
	var answer = 0
	for character in s.reversed() {
		if character != " " {
			answer += 1
		} else if answer > 0 {
			return answer
		}
	}

	return answer
}

lengthOfLastWord("Hello World") // 5
lengthOfLastWord("   fly me   to   the moon  ") // 4
lengthOfLastWord("luffy is still joyboy") // 6

func lengthOfLastWordSplits(_ s: String) -> Int {
	let arrayOfWords = s.split(separator: " ")
	return arrayOfWords.last?.count ?? 0
}

lengthOfLastWordSplits("Hello World") // 5
lengthOfLastWordSplits("   fly me   to   the moon  ") // 4
lengthOfLastWordSplits("luffy is still joyboy") // 6
