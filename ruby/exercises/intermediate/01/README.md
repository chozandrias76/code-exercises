# Challenge: Merge Intervals

Given an array of intervals where each interval is a pair of integers `[start, end]`, merge all overlapping intervals and return an array of the non-overlapping intervals that cover all the intervals in the input.

## Example

**Input:**
```rb
[[1,3],[2,6],[8,10],[15,18]]
```

**Output:**
```rb
[[1,6],[8,10],[15,18]]
```

**Explanation:**
Since intervals `[1,3]` and `[2,6]` overlap, they are merged into `[1,6]`. The other intervals don't overlap and are included in the output as is.

## Instructions

1. Your function should accept an array of intervals.
2. It should return an array of merged intervals.
3. Assume that the input array is not necessarily sorted.

## Ruby Template

```rb
def merge_intervals(intervals)
  # Your code here
end
```