def merge_sort(arr)
  return arr if arr.length <= 1

  middle_index = arr.length / 2
  left_half = arr.slice(0, middle_index)
  right_half = arr.slice(middle_index, arr.length)

  merge(merge_sort(left_half), merge_sort(right_half))
end

def merge(left, right)
  result = []

  until left.empty? || right.empty?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end

  result.concat(left).concat(right)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # => [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110]) # => [79, 100, 105, 110]
