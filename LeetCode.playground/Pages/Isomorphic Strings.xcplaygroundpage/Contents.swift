import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
	let sArray = Array(s)
	let tArray = Array(t)
	guard sArray.count == tArray.count else { return false }

	var dictS = [Character: Character]()
	var dictT = [Character: Character]()
	for index in 0..<sArray.count {
		let sChar = sArray[index]
		let tChar = tArray[index]
		if let dictionaryChar = dictS[sChar], dictionaryChar != tChar { return false }
		if let dictionaryChar = dictT[tChar], dictionaryChar != sChar { return false }
		dictS[sChar] = tChar
		dictT[tChar] = sChar
	}

	return true
}

isIsomorphic("egg", "add") // true
isIsomorphic("foo", "bar") // false
isIsomorphic("paper", "title") // true
isIsomorphic("badc", "baba") // false
