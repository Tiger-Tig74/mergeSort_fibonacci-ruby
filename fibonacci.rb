def fibs(number)
  array = [0, 1]
  return array[0, number] if number < 2

  (2...number).each do |i|
    array.append(array[-1] + array[-2])
  end

  array[0, number]
end

def fibs_rec(number)
  if number <= 1
    0
  elsif number == 2
    1
  else
    fibs_rec(number - 1) + fibs_rec(number - 2)
  end
end

# Example usage:
puts "Iterative sequence: #{fibs(8).inspect}"   # Generates the first 8 Fibonacci numbers
puts "Recursive single number: #{fibs_rec(8)}"  # Outputs the 8th Fibonacci number
