require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
   collection << yield(array[i])
    i += 1
  end
  collection
end


#hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" } --the return value for this will be "nil" so delete "puts" to RETURN value of code 
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
