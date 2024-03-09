
import Foundation

let arr = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]]

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
	arr.flatMap { $0 }.sorted()
}

flattenAndSort(arr)
