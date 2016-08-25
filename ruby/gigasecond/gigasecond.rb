class Gigasecond
  GIGASECOND = 10**9

  def self.from(start_date)
    return (start_date.to_time + GIGASECOND).utc
  end
end

module BookKeeping
  VERSION = 3
end
