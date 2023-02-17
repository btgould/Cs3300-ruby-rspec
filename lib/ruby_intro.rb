# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum # use ruby's built in tools to sum arrays
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    max = arr[0] # largest num in list
    maxx = arr[1] # second largest num in list
    if maxx > max # swap if needed
      tmp = max
      max = maxx
      maxx = tmp
    end

    # iterate through rest of list to find top two largest elements
    for index in 2..arr.length-1
      if arr[index] > max # new largest, largest -> second largest
        maxx = max
        max = arr[index]
      elsif arr[index] > maxx # new second largest
        maxx = arr[index]
      end
    end

    max + maxx # return sum of top two largest
  end
end

def sum_to_n? arr, n
  # idea: change to one variable problem
  # At each element x in the list, does the list contain n-x?
  # If so, those two elements sum to n and we return true

  seen = {}
  # iterate through list
  for index in 0..arr.length-1
    # check if we have seen complement of current list
    if seen.has_key?(n-arr[index])
      return true
    end

    seen[arr[index]] = true # add current element to seen list
  end

  # if we haven't found a pair by now, there isn't one
  false
end

# Part 2

def hello(name)
  "Hello, " + name # Use "+" as string concat operator
end

def starts_with_consonant? s
  # define regex pattern for both lower and upper case consonants
  lower_consonants = /[bcdfghjklmnpqrstvwxyz]/
  upper_consonants = /[BCDFGHJKLMNPQRSTVWXYZ]/

  # match consonants regex against start of string
  s.start_with?(lower_consonants) || s.start_with?(upper_consonants)
end

def binary_multiple_of_4? s
  # Check if string is valid binary
  if s.match?(/^[01 ]+$/)
    if s == "0"
      return true # 0 is a multiple of 4
    elsif s.length < 2
      return false # no non-zero binary number with less than 2 digits is a multiple of 4
    elsif s[-1] == '0' && s[-2] == '0'
      return true # both least significant digits are 0 -> multiple of 4
    end
  end 

  # If we get here, string was not valid binary
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn  
  attr_accessor :price

  def initialize(isbn, price)
    # validate types of arguments 
    if isbn.class != String
      raise ArgumentError 
    end
    if !(price.class == Float || price.class == Integer)
      raise ArgumentError
    end

    # validate values of arguments
    if isbn == ''
      raise ArgumentError
    end 
    if price <= 0
      raise ArgumentError
    end

    # Assign arguments to instance vars
    @isbn = isbn
    @price = price
  end

  def price_as_string
    # Format price as float with two decimals, concat with "$"
    "$" + "%.2f" % @price
  end
end
