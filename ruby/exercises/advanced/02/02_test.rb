# frozen_string_literal: true

require_relative '02'

def test_spiral_flatten_a
  input_matrix = [
    [1,  2,  3,  4],
    [12, 13, 14, 5],
    [11, 16, 15, 6],
    [10, 9, 8, 7]
  ]
  expected_path = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

  result = spiral_flatten(input_matrix)

  if result == expected_path
    puts 'Test passed!'
  else
    puts "Test failed. Expected #{expected_path}, but got #{result}."
  end
end

def test_spiral_flatten_b
  input_matrix = [
    [1, 2, 3, 4, 5],
    [14, 15, 16, 17, 6],
    [13, 20, 19, 18, 7],
    [12, 11, 10, 9, 8]
  ]
  expected_path = (1..20).to_a

  result = spiral_flatten(input_matrix)

  if result == expected_path
    puts 'Test passed!'
  else
    puts "Test failed. Expected #{expected_path}, but got #{result}."
  end
end

def test_spiral_flatten_c
  input_matrix = [
    [1, 2, 3, 4, 5],
    [18, 19, 20, 21,  6],
    [17, 28, 29, 22,  7],
    [16, 27, 30, 23,  8],
    [15, 26, 25, 24,  9],
    [14, 13, 12, 11, 10]
  ]

  expected_path = (1..30).to_a

  result = spiral_flatten(input_matrix)

  if result == expected_path
    puts 'Test passed!'
  else
    puts "Test failed. Expected #{expected_path}, but got #{result}."
  end
end

# Run the test
test_spiral_flatten_a
test_spiral_flatten_b
test_spiral_flatten_c
