require '../test_framework'


# Write function scramble(str1,str2) that returns true if a portion of str1 characters
# can be rearranged to match str2, otherwise returns false.


def scramble(s1,s2)
 s2.chars.all? {|s| s1.sub!(s ,''); }
end


describe "Tests" do
  Test.assert_equals(scramble('rkqodlw','world'),true)
  Test.assert_equals(scramble('cedewaraaossoqqyt','codewars'),true)
  Test.assert_equals(scramble('katas','steak'),false)
  Test.assert_equals(scramble('scriptjava','javascript'),true)
  Test.assert_equals(scramble('scriptingjava','javascript'),true)
end