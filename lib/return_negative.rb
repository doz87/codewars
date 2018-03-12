require '../test_framework'

# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?


def makeNegative(num)
  num *= -1 if num.positive?
  num
end

# Better solution
# def makeNegative(num)
#   -num.abs
# end


# TODO: Replace examples and use TDD development by writing your own tests
# These are some of the methods available:
#   Test.expect(boolean, [optional] message)
#   Test.assert_equals(actual, expected, [optional] message)
#   Test.assert_not_equals(actual, expected, [optional] message)

describe "Solution" do
    Test.assert_equals(makeNegative(1), -1)
    Test.assert_equals(makeNegative(-5), -5)
    Test.assert_equals(makeNegative(0), 0)
end