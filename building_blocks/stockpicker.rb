def pick stocks
  highest_profit = 0
  indices = []
  (stocks.length-1).downto(1) do |i|
    (i-1).downto(0) do |j|
      sell = stocks[i]
      buy = stocks[j]
      if sell-buy > highest_profit
        highest_profit = sell-buy
        indices = [j, i]
      end
    end
  end
  indices
end
puts pick([17,3,6,9,15,8,6,1,10])
