require '../test_framework'


# Write a function called repeatStr which repeats the given string string exactly n times.

def repeat_str (n, s)
  s*n
end



Test.describe("Example test cases") do
  Test.assert_equals(repeat_str(3, "*"),"***")
  Test.assert_equals(repeat_str(5, "#"),"#####")
  Test.assert_equals(repeat_str(2, "ha "),"ha ha ")
end
