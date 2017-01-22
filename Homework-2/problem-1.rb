# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.


# We are defining a method called fizzbuzz w/ perameter number
def fizzbuzz(number)
  # Each Case occurs when the condition is true
  case
    # modulo operater that says when Number is / by 15,3 or 5 has a remainder of 0, enter the string respectively.
    when number % 15 == 0 then 'Fizzbuzz'
    when number % 3  == 0 then 'Fizz'
    when number % 5  == 0 then 'Buzz'
    # else just enter the perameter
    else number
  # ends the case
  end
# ends the method
end

# We are defining method called fizzbuzz_to w/ limit perameter.
def fizzbuzz_to(limit)
  # a loop that starts at 1 calling the method upto what ever limit is entered, then it will do whats in the block.
  1.upto(limit) do |i|
    # puts the method fizzbuzz which is the loop code up untill whay ever limit is set. (Im a bit confused about the |i| in this scenario???)
    puts(fizzbuzz(i))
  # ends the loop
  end
# ends the method
end
