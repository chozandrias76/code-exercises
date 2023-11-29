require 'debug'
def merge_intervals(intervals)
  merged_intervals = []
  intervals.sort_by{|i| i.first}.each do |interval|
    merged_intervals.push(interval) && next if merged_intervals.empty?
    replaced = false
    merged_intervals.each.with_index do |merged_interval, idx|
      if interval.first > merged_interval.first && interval.first < merged_interval[1]
        if merged_interval[1] < interval[1]
          replaced = true
          merged_intervals[idx] = [merged_interval.first, interval[1]]
        end
      end
    end

    unless replaced
      merged_intervals.push(interval)
    end
  end
  merged_intervals
end