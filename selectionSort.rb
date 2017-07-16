def selection_sort(arr = Array.new)
  (0..arr.length - 2).each do |i|
    lowestIndex = i
    (i + 1..arr.length - 1).each do |other|
      if arr[lowestIndex] > arr[other]
        lowestIndex = other
      end
    end
    arr[i], arr[lowestIndex] = arr[lowestIndex], arr[i]
  end
  return arr
end