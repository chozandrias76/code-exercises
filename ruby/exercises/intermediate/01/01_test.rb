require_relative '01'

def test_a
  result = merge_intervals([[1,3],[2,6],[8,10],[15,18]])
  
  passes = result == [[1,6],[8,10],[15,18]]
  print test_case(result, passes)
end

def test_b
  result = merge_intervals([[-1,2], [4,5], [1,3]])
  passes = result == [[-1,3],[4,5]]

  print test_case(result, passes)

end

def test_case(result, passes)
  "merge_intervals produces #{result}\n Test passed? #{passes}\n"
end

test_a
test_b