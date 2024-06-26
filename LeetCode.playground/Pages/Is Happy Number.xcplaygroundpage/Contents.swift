import Foundation

func isHappy(_ n: Int) -> Bool {
	var squareSums = Set<Int>()
	var squareSum = n.sumOfDigitsSquares
	squareSums.insert(squareSum)

	while squareSum != 1 {
		let next = squareSum.sumOfDigitsSquares
		if squareSums.contains(next) {
			return false
		} else {
			squareSums.insert(next)
			squareSum = next
		}
	}

	return true
}

private extension Int {
	var sumOfDigitsSquares: Int {
		var digits = [Int]()
		var number = self
		while number > 0 {
			digits.append(number % 10)
			number = number / 10
		}
		return digits.reduce(0) { $0 + $1 * $1 }
	}
}

isHappy(19) // true
isHappy(2) // false
