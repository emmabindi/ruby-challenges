# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

def nthFibonacci(n)
  fibonacci = []
  a = 0
  b = 1
  while n >= fibonacci.length
    fibonacci.push(a)
    fibonacci.push(b)
    a = a + b
    b = a + b
  end
  return fibonacci[n]
end

# 1 May 2019 - Solution from the web. This doesn't work with bigger numbers. 
def nthFibonacci2(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  elsif n == 2
    return 1
  else n > 2
    n = nthFibonacci2(n-1) + nthFibonacci2(n-2)
  end
end

puts nthFibonacci(1000)