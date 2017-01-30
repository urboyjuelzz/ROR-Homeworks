# Problem 1
# Create a class called Utility.
# Add a class method to Utility called count_words that takes a string as a parameter. The method should return a hash where the keys are words and the values are numbers indicating the number of times the key occurred in the input string. For example, Utility.count_words('the good and the bad and the ugly') should return:
# {"the" => 3, "good" => 1, "and" => 2, "bad" => 1, "ugly" => 1}
# Print the result of calling this method with the string it was the best of times, it was the worst of times.

class Utility

  def count_words (words)
    words = words.split(" ")
    count = Hash.new {0}
    count_words.each do |word|
      count[word] += 1
    end
    count = count.sort_by {|a, b| b }
    count.reverse!
    count.each { |word, count| puts word + " " + count.to_s }
  end
end

Utility.new.count_words('it was the best of times, it was the worst of times.')

  #
  #
  #
  #
  #
  #
  #
  #
  # numbers = [578, 16, 85]
  # sum = 0
  #
  # numbers.each do |i|
  #
  #
  #   puts(sum)
