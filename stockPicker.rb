def stock_picker(array)
    buy_day = 0
    sell_day = 0

    array[0..-1].each_with_index do |price, index|
        highest_number_after = array[index..-1].max
        if (highest_number_after - price > array[sell_day]-array[buy_day]) then
            buy_day = index
            sell_day = array.index(highest_number_after)
        end
    end
    [buy_day,sell_day]
end