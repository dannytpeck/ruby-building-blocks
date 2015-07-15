def stock_picker(prices)
	buy_price, profit = prices[0], 0

	for i in 0..prices.length-1
		buy_price = prices[i] if prices[i] < buy_price
		for j in i..prices.length-1
			if prices[j] - buy_price > profit
				profit = prices[j] - buy_price
				buy_day = prices.index(buy_price)
				sell_day = prices.index(prices[j])
			end
		end
	end

	answer = []
	answer.push(buy_day)
	answer.push(sell_day)
end

print stock_picker([17,3,6,9,15,8,6,1,10])