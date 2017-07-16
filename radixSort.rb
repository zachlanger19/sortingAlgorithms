def radix_sort(arr = Array.new)
  (1..arr.max.to_s.length).each do |exponent|
    digits = [[], [], [], [], [], [], [], [], [], []]
    modifier = 10 ** exponent
    divisor = modifier / 10
    arr.each do |n|
      lsd = n % modifier
      lsd /= divisor
      digits[lsd].push(n)
    end
    arr = digits.inject(:+)
  end
  arr
end
