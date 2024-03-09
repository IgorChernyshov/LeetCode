import UIKit

let input = [1, 2, 2]
let output = 9

func squareSum(_ vals: [Int]) -> Int {
	vals.reduce(0) { $0 + $1 * $1 }
}

print(squareSum(input) == output)
