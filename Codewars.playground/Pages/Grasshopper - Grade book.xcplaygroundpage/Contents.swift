import UIKit

let output = "A"

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
	let average = (s1 + s2 + s3) / 3
	switch average {
	case 90...100: return "A"
	case 80..<90: return "B"
	case 70..<80: return "C"
	case 60..<70: return "D"
	default: return "E"
	}
}

print(getGrade(90, 95, 100) == output)
