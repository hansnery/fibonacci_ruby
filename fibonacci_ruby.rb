# frozen_string_literal: true

# Iterative method
def fibs(pos)
  first_number = second_number = 1
  result = [0]
  result << first_number if pos >= 1
  result << second_number if pos >= 2
  if pos > 2
    (pos - 2).times do
      third_number = first_number + second_number
      result << third_number
      first_number = second_number
      second_number = third_number
    end
  end
  p result
end

fibs(5)

# Recursive method
def fibs_rec(pos)
  result = []
  define_method :find_fib do |num|
    num < 2 ? num : find_fib(num - 1) + find_fib(num - 2)
  end
  0.upto(pos) do |i|
    result << find_fib(i)
  end
  p result
end

fibs_rec(5)
