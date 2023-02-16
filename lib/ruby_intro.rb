# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum # use ruby's built in tools to sum arrays
end

def max_2_sum arr
  max = 0 # largest num in list
  maxx = 0 # second largest num in list

  # iterate through list to find top two largest elements
  for index in 0..arr.length-1
    if arr[index] > max # new largest, largest -> second largest
      maxx = max
      max = arr[index]
    elsif arr[index] > maxx # new second largest
      maxx = arr[index]
    end
  end
  
  max + maxx # return sum of top two largest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
