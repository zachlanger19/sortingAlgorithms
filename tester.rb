require './insertionSort'
require './selectionSort'
require './quickSort'
require './radixSort'

def setArray(elements)
  arr = (1..elements).to_a.shuffle
  return arr
end

def default_sort(arr = [])
  arr.sort!
end

arr = setArray(1_000_000)
start = Time.now
arr = radix_sort(arr)
finish = Time.now
p arr
p "#{(finish - start) * 1000}ms"
