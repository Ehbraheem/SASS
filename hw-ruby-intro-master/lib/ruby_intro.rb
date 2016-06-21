# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    return 0 if arr.empty?
    return arr.inject(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
    return 0 if arr.empty?
    sum arr.sort!.last(2)
    
end
puts max_2_sum [1]
def sum_to_n? arr, n
    return false if arr.empty? or arr.length == 1
    arr.each do |x|
        arr.each do |i|
            if  i != x and i + x == n 
                return true 
            end
        end
        end
    return false
end
puts sum_to_n?([-1,-2,3,4,5,-8], -3)
# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end
puts hello("Dan")
def starts_with_consonant? s
  # YOUR CODE HERE
  return false if !!(s =~ /[^a-z]/i)
  s =~ /\A[^aeiou]/i ? true : false
end
puts 'start', starts_with_consonant?('afoo')

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
  s =~ /^[01]*100${3,}$/ ? true : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn,price
    raise ArgumentError if isbn.empty? or price <= 0
    @price = price
    @isbn = isbn
  end
  
  def price_as_string
      format("$%.2f", price)
   end
end
