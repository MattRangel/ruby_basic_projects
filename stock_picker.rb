# stock_picker.rb

def stock_picker(price_array)
  prices_indexed = price_array.each_with_index
  prices_indexed.reduce([0,0]) do |acc, buy_array|
    sell_array = prices_indexed.drop(buy_array[1] + 1).max
    return acc if sell_array.nil?
    acc_profit = price_array[acc[1]] - price_array[acc[0]]
    current_profit = sell_array[0] - buy_array[0]
    acc = [buy_array[1], sell_array[1]] if current_profit > acc_profit
    acc
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
