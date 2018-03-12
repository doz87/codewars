require '../test_framework'

# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items.
# We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item.
# It must return the display text as shown in the examples:


def likes(names)
  return 'no one likes this' if names.empty?
  ending = names.size > 1 ? ' like this' : ' likes this'

  namescopy = names.dup
  string = namescopy.shift

  case
    when namescopy.size == 1
      string += " and #{namescopy.shift}"

    when namescopy.size == 2
      string += ", #{namescopy.shift} and #{namescopy.shift}"

    when namescopy.size > 2
      string += ", #{namescopy.shift} and #{namescopy.size} others"
  end
  string += ending
end

# Best practice
# def likes(names)
#   case names.size
#     when 0
#       'no one likes this'
#     when 1
#       "#{names[0]} likes this"
#
#     when 2
#       "#{names[0]} and #{names[1]} like this"
#
#     when 3
#       "#{names[0]}, #{names[1]} and #{names[2]} like this"
#
#     else
#       "#{names[0]}, #{names[1]} and #{names.size - 2} like this"
#   end
# end




Test.describe("Tests") do
  Test.assert_equals(likes([]), 'no one likes this')
  Test.assert_equals(likes(['Peter']), 'Peter likes this')
  Test.assert_equals(likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
  Test.assert_equals(likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
  Test.assert_equals(likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
  Test.assert_equals(likes(['Quincy Rosenkreutz', 'Priscilla S. Asagiri', 'Daley Wong', 'Brian J. Mason', 'Nigel', 'Linna Yamazaki', 'Macky Stingray']), 'Daley Wong, Brian J. Mason and 3 others like this')
  Test.assert_equals(likes(['Quincy Rosenkreutz', 'Nene Romanova', 'Daley Wong', 'Sylvie', 'Leon McNichol', 'Priscilla S. Asagiri', 'Anri', 'Galatea', 'Nigel', 'Linna Yamazaki', 'Sylia Stingray', 'Macky Stingray']), 'Daley Wong, Sylvie and 8 others like this')
end
