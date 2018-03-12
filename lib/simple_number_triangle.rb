require '../test_framework'


# Consider the number triangle below, in which each number is equal to the number above plus the number to the left.
# If there is no number above, assume the number above is a 0.


def solve(n)
  result = Array.new(n) { [1] }
  result.each.with_index do |item, index|
    row, pred_row = result[index], result[index-1]
    0.upto(index-1) do |subindex|
      row << (pred_row[subindex+1].nil? ? row[subindex] : row[subindex] + pred_row[subindex+1])
    end if index.nonzero?
  end
  result.last.inject(:+)

  # 1st element will be 1
  # 2nd element will be n - 1
  #
  # (n)th element will be (n - 1)th element

end


describe "Simple number triangle" do
    Test.assert_equals(solve(4),14)
    Test.assert_equals(solve(5),42)
    Test.assert_equals(solve(6),132)
    Test.assert_equals(solve(7),429)
    Test.assert_equals(solve(8),1430)
    Test.assert_equals(solve(20),6564120420)
end





# 1                       1
# 1 1                     2
# 1 2 2                   5
# 1 3 5 5                 14
# 1 4 9 14 14             42
# 1 5 14 28 42 42         132
# 1 6 20 48 90 132 132    429