def min_path_sum(grid)
  return 0 if grid.empty?

  m, n = grid.length, grid[0].length
  dp = Array.new(m) { Array.new(n, 0) }

  dp[0][0] = grid[0][0]

  # Initialize the first row
  (1...n).each do |i|
    dp[0][i] = dp[0][i-1] + grid[0][i]
  end

  # Initialize the first column
  (1...m).each do |j|
    dp[j][0] = dp[j-1][0] + grid[j][0]
  end

  # Calculate the minimum path sum for each cell
  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = [dp[i-1][j], dp[i][j-1]].min + grid[i][j]
    end
  end

  dp[m-1][n-1]
end
