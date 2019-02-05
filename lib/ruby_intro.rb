# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum_arr = 0
  if arr.length > 0
     arr.each do |element|
     sum_arr = sum_arr + element
  end   
     return(sum_arr)
  
  else
     return(sum_arr)
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum_arr = 0
  if arr.length > 1
    max_element = 0
    next_max_element = 0
    arr = arr.sort
    max_element = arr[-1]
    arr.pop
    next_max_element = arr[-1]
    sum_arr = max_element + next_max_element
    #return(sum_arr)
  
  elsif arr.length == 1
     sum_arr = arr[0]
     #return(sum_arr)
  
  elsif arr.length == 0
        sum_arr=0
     #return(sum_arr)
  end

    return(sum_arr)
 
end

def sum_to_n?(arr, n)
  sum = 0
  if arr.length > 1
          arr.each_with_index do |element1, i|
            arr.each_with_index do |element2, j|
               if i != j
                       sum = element1 + element2
                       if n == sum
                         return(true)
                       end
               end
             end
          end
        return(false)
  elsif arr.length == 1
        return(false)
  elsif arr.length == 0
        return(false)
  end
end


# Part 2
def hello(name)
        str = "Hello, "
        string = str.concat("#{name}")
end

def  starts_with_consonant?(s)
     
     if s[0] =~ /[a-z]/i
        if s[0] =~ /^[^a^e^i^o^u]/i
       		return(true)
     	else
                return(false)
     	end
     else    
        return(false)
     end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
 if s =~ /[^1^0]/
       return false
    else
        if s =~ /[10]*00$/ || s == '0'
             return true
        else
             return false
        end
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price 
   
def initialize(isbn, price)
        
        #@price = price
	#@isbn = isbn 
      
   	if isbn.empty? || price <= 0
        	raise ArgumentError.new("YOLO")
	else
        	@price = price
	        @isbn = isbn
     	end
   end
          #%.2f" % [amount]

   def price_as_string
        str = "$"
     	item = str.concat("%.2f" % [price])
     	return(item)
   end
end
