def fib_iterate(num)
  result = []

  num.times do |i|
    if [0, 1].include?(i)
      result << i
      next
    end

    result << (result[i - 1] + result[i - 2])
  end

  result
end

p fib_iterate(8) # => [0, 1, 1, 2, 3, 5, 8, 13]
