# Problem 1
# Download the file homework-4-problem-1.zip from Canvas and unzip it to use as the template for this problem.
# Create a class in triangle.rb called Triangle.
# Run the code in tests.rb. This file contains a series of tests that will verify the correctness of your Triangle class by calling the kind method for triangles with sides of various lengths and checking the value returned. When you run the tests, you will see a report of which tests failed. You haven’t written any code for Triangle yet, so all the tests will fail initially—your job is to make them all pass!
# Add a constructor to Triangle that takes three numbers as parameters representing the lengths of the sides of the triangle.
# Add a method to Triangle called kind that returns a symbol indicating whether the triangle is equilateral, isosceles, or scalene. The method should raise an exception for triangles with any side of length less than or equal to zero and for triangles whose sides violate the triangle inequality (Links to an external site.).

class TraingleError < RuntimeError
end

class Triangle
  # attr_accessor (:)

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a == b) || (a == c) || (b == c)
      return :equilateral
    elsif (a <= b + c)
      return :isosceles
    elsif (a != b && c || b != c && a || c != b && a)
      return :scalene
    else (a <= 0) || (b <= 0) || (c <= 0)
      raise(TriangleError)
  end
end
