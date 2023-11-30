require_relative '01.rb'

def test_min_path_sum
  grid = [
    [1, 3, 1],
    [1, 5, 1],
    [4, 2, 1]
  ]
  expected_path_sum = 7

  result = min_path_sum(grid)

  if result == expected_path_sum
    puts "Test passed!"
  else
    puts "Test failed. Expected #{expected_path_sum}, but got #{result}."
  end
end

# Run the test
test_min_path_sum
