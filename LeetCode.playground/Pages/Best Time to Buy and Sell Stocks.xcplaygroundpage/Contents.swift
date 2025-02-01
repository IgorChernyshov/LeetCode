func maxProfit(_ prices: [Int]) -> Int {
	var minPrice = Int.max
	var maxProfit = 0

	for price in prices {
		if price < minPrice {
			minPrice = price
		}
		maxProfit = max(maxProfit, price - minPrice)
	}

	return maxProfit
}

maxProfit([7,1,5,3,6,4]) // 5
maxProfit([7,6,4,3,1]) // 0
