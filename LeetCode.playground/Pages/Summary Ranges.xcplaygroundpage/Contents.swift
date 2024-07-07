import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
	guard !nums.isEmpty else { return [] }
	var result = [String]()
	var firstNumber: Int = nums[0]
	var secondNumber: Int = nums[0]

	for index in 0..<nums.count - 1 {
		if nums[index+1] == secondNumber + 1 {
			secondNumber = nums[index+1]
			continue
		} else {
			appendResult(firstNumber: firstNumber, secondNumber: secondNumber, result: &result)
			firstNumber = nums[index+1]
			secondNumber = nums[index+1]
		}
	}

	appendResult(firstNumber: firstNumber, secondNumber: secondNumber, result: &result)
	return result
}

private func appendResult(firstNumber: Int, secondNumber: Int, result: inout [String]) {
	if firstNumber == secondNumber {
		result.append("\(firstNumber)")
	} else {
		result.append("\(firstNumber)->\(secondNumber)")
	}
}

summaryRanges([0,1,2,4,5,7]) // ["0->2","4->5","7"]
summaryRanges([0,2,3,4,6,8,9]) // ["0","2->4","6","8->9"]
