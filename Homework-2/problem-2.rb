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
  attr_accessor :hey_world

  def shout(word)
    return "#{word}.upcase"
  end

  shout("Quieeeet!")
