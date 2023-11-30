# Challenge: Optimal Path in a Grid

**Problem Statement:**

You are given a 2D grid of positive integers where each cell represents the cost of passing through that cell. You can move either down or right at any point in time. Your task is to find a path from the top-left corner to the bottom-right corner which minimizes the total cost.

**Input:**

- A 2D array `grid` of dimensions `n x m` (where 1 ≤ n, m ≤ 100). Each element in the grid is a positive integer not exceeding 1,000.

**Output:**

- Return the minimum cost of a path from the top-left corner to the bottom-right corner.

**Example:**

```ruby
grid = [
  [1, 3, 1],
  [1, 5, 1],
  [4, 2, 1]
]
# Output: 7
# The path is 1 → 3 → 1 → 1 → 1, which equals 7.
```

## Ruby Template

Write your solution in Ruby. Here's a template to get you started:

```rb
def minimum_path_cost(grid)
  # Write your code here
end

# Test your function with the provided example
grid = [
  [1, 3, 1],
  [1, 5, 1],
  [4, 2, 1]
]
puts minimum_path_cost(grid) # Expected output: 7
```
