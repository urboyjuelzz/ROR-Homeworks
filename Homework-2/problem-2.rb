# Problem 2
# Create a class called Homework.
# Add a method to Homework called shout that takes a string as a parameter and returns the string in all caps. For example, shout('Hello') should return 'HELLO'.
# Add a method to Homework called repeat_string that takes two parameters, a string and an integer. The method should print the given string the number of times indicated by the given integer. For example, repeat_string('Hello', 3) should print:
# Hello
# Hello
# Hello
# Add a method to Homework called calendar that takes two arrays as parameters. The first array should be a list of names of holidays as strings and the second array should a list of the dates of those holidays as strings. The method should return a hash where the keys are the names of the holidays from the first array and the value for each key is the corresponding date from the second array. For example, calendar(['Independence Day', 'Halloween', 'Christmas'], ['4 July', '31 October', '25 December']) should return {'Independence Day' => '4 July', 'Halloween' => '31 October', 'Christmas' => '25 December'}.
# Create a new instance of the Homework class and call each of the previous methods.

class Homework
  # use a method to print string in upcase.
  def shout (word)
    return "#{word}".upcase
  end
  #use methods thats takes 2 arguments to repeat a string based on the number assigned to one of the arguments.
  def repeat_string(write_word, number_of_times)
    1.upto(number_of_times) do |i|
      puts ("#{write_word}")
    end
  end

# use a method that takes 2 arguments that converts strings in 2 array into a hash(key: value).
  def calendar(holidays, dates)
    result = {}

    0.upto(holidays.length - 1) do |i|
      result[holidays[i]] = dates[i]
    end

    result
  end
end


instance_of_homwork = Homework.new

(Homework.new.shout('Quieeeet!'))

Homework.new.repeat_string('love', 3)

puts(Homework.new.calendar(['MLK', 'Columbus', 'Halloween'], ['Jan 16', 'Oct 9', 'Oct 31']))



# notes for me to understan Hash
# my_hash = {'name' => 'cody'} how you assign a hash as a value
# my_hash['Name'] = call a hash key
# my_hash['name'] = 'Joel'
