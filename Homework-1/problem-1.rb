# Add a comment before each line of the following code explaining what the line does in plain English. If you’re not sure what certain lines do, try copying and pasting the code into a Ruby file, modifying it, and running it to help you figure out what’s going on. For example, you can try adding puts statements in different places to see what is happening.

# here we are defining a method with 3 parameter
def full_name(first_name, last_name, title)
  # declaring a variable caled "name" with no value
  name = nil
  # if statement that says if the title and the first name and the last name are true...
  if title && first_name && last_name
    # reassign the variable name to have a value of title + the first name + the last name
    name = title + ' ' + first_name + ' ' + last_name
  # unless its a title and last name
  elsif title && last_name
    # reassign the variable name to have a value of title + the last name
    name = title + ' ' + last_name
  # unless its a first name and last name
  elsif first_name && last_name
    # reassign the variable name to have a value of first name + the last name
    name = first_name + ' ' + last_name
  # unless its a first name and last name
  elsif first_name
    # reassign the variable name to have a value of first name
    name = first_name
  # unless its false
  else
    # stop the code and print the string
    raise "That doesn't look like a name!"
  # ends the if else operation
  end
  # returns name
  return(name)
# ends the method
end
