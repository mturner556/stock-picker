def stock_picker(prices)
    best_profit = 0
    days = []

    prices.each_with_index do |price1, i1 |
        prices.each_with_index do |price2, i2|
            p profit = price2 - price1

            if profit > best_profit && i1 < i2
                p best_profit = profit
                days = [i1, i2]
            end
        end
    end

    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])

# this solution is the only solution that I could fine that made sense to me. This project was especially difficult for me to grasp, but after looking over this solution I have a better grasp of how to approch this problem in the future. Taking an array of prices we need to find the best possible profit available to us. Starting off by setting the best_profit and days variables. 
# The nested arrays and the if statements are what I was confused with
# The nested arrays iterate through the given array twice. Making each value and index available to use twice*
# Once we call #each_with_index once it will call the second #each_with_index again. This allows the program to call the elements, or in this case prices, twice.
# We can then use the formula price2 - price1 to get all the possible profits 
# Next, within the if statement, if the profit is greater than the best_profit variable && price1's index(i1) is less than price2's index(i2) we get the desired result of the best_profit of $12 and the the best days to buy and sell on [i1, i2] => [1, 4]
