def bubble_sort(array)
    array.size.times do |i|
        index = 0
        for number in array
            if(index == array.size-i-1) then break end
            if(number > array[index+1]) then
                temp = array[index+1]
                array[index+1] = number
                array[index] = temp
            end
            index+=1
        end
    end
    array
end