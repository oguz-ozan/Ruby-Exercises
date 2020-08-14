def bubble_sort(arr)
for i in 0..arr.length-1
0.upto(arr.length-2) do |num|
if arr[num] > arr[num+1]
  temp = arr[num]
  arr[num] = arr[num+1]
  arr[num+1] = temp
end
end 
end
p arr
end

bubble_sort([2,8,5,3,9,4,1])