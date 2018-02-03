# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  sumArr = Array.new(arr).inject(0){|sum,x| sum + x}
  # 0 base case returned when empty array given
  # http://ruby-doc.org/core-2.5.0/Enumerable.html#method-i-inject
end

def max_2_sum arr
  # takes array of ints and returns sum of two largest elements
  return 0 if arr.empty?
  max2SumArr = Array.new(arr).max(2).reduce(:+)
end

def sum_to_n? arr, n
  return true if arr.combination(2).any? {|a, b| a + b == n}
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return true if (s !~ /\A[aeiouAEIOU]/) && (s =~ /\A[a-zA-Z]/)
  false
end

def binary_multiple_of_4? s
  # True if string reps binary num that's multiple of 4
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
