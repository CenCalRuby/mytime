require_relative "my_time"

def stat(str)
  return "" if str.empty?
  times = str.split(', ').map { |x| MyTime.from_string(x) }
  sorted_time = times.sort
  len = times.count

  range = sorted_time.last - sorted_time.first
  average = times.inject(&:+) / times.count
  median = (sorted_time[(len - 1) / 2] + sorted_time[len / 2]) / 2

  "Range: #{range} Average: #{average} Median: #{median}"
end
