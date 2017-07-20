class MyTime
  attr_reader :hours, :minutes, :seconds

  def self.from_seconds(total_time)
    h, m, s = [total_time / 3600, total_time/ 60 % 60, total_time % 60]

    MyTime.new(h, m, s)
  end

  def self.from_string(str)
    h, m, s = str.split('|').map(&:to_i) if str
    MyTime.new(h, m, s)
  end

  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def to_s
    "#{hours.to_s.rjust(2, '0')}|#{minutes.to_s.rjust(2, '0')}|#{seconds.to_s.rjust(2, '0')}"
  end

  def to_seconds
    hours * 60 * 60 + minutes * 60 + seconds
  end

  def <=>(other)
    [@hours, @minutes, @seconds] <=> [other.hours, other.minutes, other.seconds]
  end

  def +(other)
    MyTime.from_seconds(self.to_seconds + other.to_seconds)
  end

  def -(other)
    MyTime.from_seconds(self.to_seconds - other.to_seconds)
  end

  def /(scalar)
    MyTime.from_seconds(self.to_seconds / scalar)
  end
end
