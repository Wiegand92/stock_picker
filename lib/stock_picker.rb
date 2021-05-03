def stock_picker(prices_array)
  best_dates = [0, 1]

  prices_array.each_with_index { |buy, index| 
    index2 = index + 1
    index2.upto(prices_array.length - 1) { |sell| 
      if prices_array[best_dates[1]] - prices_array[best_dates[0]] < prices_array[sell] - buy
        best_dates[0] = index
        best_dates[1] = sell
      end
    }
  }

  best_dates
end
