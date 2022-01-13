# Stock picker algorithm

# Takes in an array of stock prices
# Days start from 0
# It should return a pair of days representing the best day to buy and sell.

# We need to buy before you can sell.


def stock_picker(stock)
    first_lowest = stock.max
    arr = Array.new # to return days as an array

   stock.each do |stock_buy| # to find first lowest value
        if stock_buy < first_lowest
            first_lowest = stock_buy
            break
        end
   end

    highest_after_lowest = stock.find_index(first_lowest) #Find the first lowest price of index

    after_first_lowest_el = stock[highest_after_lowest..-1] #What it is for to start array with first lowest value (3,6,9,15..10) 
   
    after_first_lowest_el.each do |stock_sell| #It start with first lowest element
        if stock_sell > highest_after_lowest 
                 highest_after_lowest = stock_sell
        end
    end
        arr.push(stock.find_index(first_lowest))
        arr.push(stock.find_index(highest_after_lowest))
        arr
end    

result = stock_picker([17,3,6,9,15,8,6,1,10])
 
print result