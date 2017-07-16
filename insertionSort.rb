def insertion_sort(arr = [])
  (1..arr.length - 1).each do |i|
    index = i
    while index > 0 && arr[index] < arr[index - 1]
      arr[index], arr[index - 1] = arr[index - 1], arr[index]
      index -= 1
    end
  end
  arr
end