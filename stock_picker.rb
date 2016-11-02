def stock_picker(array)

  high_count = 0
  sell_day = 0
  buy_day = 0
  low_count = 0

  profit = 0

  array.each_with_index do |val,index|

      if val > high_count && index > sell_day
        high_count = val
        sell_day = index
      end
  end

  array.each_with_index do |val,index|

    difference = high_count - val
      if difference > profit && index < sell_day
        low_count = val
        buy_day = index
        profit = difference
      end
    end

puts
puts "The best day to buy would be day #{buy_day} and the best day to sell would be day #{sell_day} for a profit of: #{profit}"
puts
end

stock_picker([17,3,6,19,5,8,6,3,10])
