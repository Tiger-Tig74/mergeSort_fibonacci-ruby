def merge_sort(array)
  return array if array.length < 2

  midpoint = array.length / 2
  left_half = array[0...midpoint]
  right_half = array[midpoint..]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    sorted << if left.first <= right.first
                left.shift
              else
                right.shift
              end
  end

  sorted.concat(left).concat(right)
end

# Example usage:
array = [4, 3, 1, 5, 2]
sorted_array = merge_sort(array)
puts "Original array: #{array}"
puts "Sorted array: #{sorted_array}"
