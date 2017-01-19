# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.


# We are defining a method called fizzbuzz w/ perameter number
def fizzbuzz(number)
  # These Case occurs when the condition is true
  case
    # i think the sign means a remainder of... but if its equal to 0 the string would rutern.
    when number % 15 == 0 then 'Fizzbuzz'
    when number % 3  == 0 then 'Fizz'
    when number % 5  == 0 then 'Buzz'
    # else just the perameter
    else number
  end
end

# defining another method fizzbuzz_to with a limit perameter
def fizzbuzz_to(limit)
  1.upto(limit) do |i|
    puts(fizzbuzz(i))
  end
end
