def quick_sort(arr = [])
  return arr if arr.length < 2
  lo = []
  hi = []
  pivots = []
  pivot = arr[0]
  arr.each do |n|
    if n < pivot
      lo.push(n)
    elsif n > pivot
      hi.push(n)
    else
      pivots.push(n)
    end
  end
  arr = quick_sort(lo) + pivots + quick_sort(hi)
end