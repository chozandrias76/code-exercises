# frozen_string_literal: true

def spiral_flatten(input_matrix, output = [])
  # Right
  input_matrix[0].each do |data|
    output.push(data)
  end
  input_matrix.delete_at(0)

  # Down
  input_matrix.each_with_index do |data, idx|
    output.push(data[data.length - 1])
    input_matrix[idx].delete_at(input_matrix[idx].length - 1)
  end

  # Left
  navigation_length = input_matrix[input_matrix.length - 1].length
  while navigation_length.positive?
    pointer = navigation_length - 1
    value = input_matrix[input_matrix.length - 1][pointer]
    output.push(value)

    navigation_length -= 1
  end
  input_matrix.delete_at(input_matrix.length - 1)

  # Up
  navigation_length = input_matrix.length
  while navigation_length.positive?
    pointer = navigation_length - 1
    value = input_matrix[pointer][0]
    output.push(value)
    input_matrix[pointer].delete_at(0)

    navigation_length -= 1
  end

  return output if input_matrix.empty?

  spiral_flatten(input_matrix, output)
end
