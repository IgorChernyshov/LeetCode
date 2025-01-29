import Foundation

func readLine() -> String? {
	"SRM"
}

let input = readLine()!

var indexR: Int?
var indexM: Int?

for (index, char) in input.enumerated() {
	if char == "R" {
		indexR = index
	} else if char == "M" {
		indexM = index
	}

	if let indexR, let indexM {
		print((indexR < indexM) ? "Yes" : "No")
	}
}
