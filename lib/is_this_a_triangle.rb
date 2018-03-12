require '../test_framework'

# Implement a method that accepts 3 integer values a, b, c.
# The method should return true if a triangle can be built with the sides of given length and false in any other case.
# (In this case, all triangles must have surface greater than 0 to be accepted).


def is_triangle?(*values)
  values.sort!.pop <= values.reduce(:+)
end

Test.describe("is_triangle?") do
    Test.assert_equals(is_triangle?(1,2,2), true)
    Test.assert_equals(is_triangle?(7,2,2), false)
end