$arr_index
def stock_picker(arr)
lowest = 1000;
highest = -1000;
arr.each do |item|
  unless(item === arr.last)
    if item < lowest
      lowest = item
      $arr_index = arr.index(item)
      # puts "Lowest is #{item} and its index is #{arr_index}"
    end
  end
end

($arr_index+1).upto(arr.length-1) {|num| arr[num] > highest ? highest = arr[num] : nil}

[lowest,highest]

 end


arry = stock_picker([4,2,5,6,7,3,5,6,1,5,6,7,4,2,3,4,5,1,2,2,1])

p arry