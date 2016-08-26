class Gigasecond
  GIGASECOND = 10**9

  def self.from(start_date)
    start_date + GIGASECOND
  end
end

module BookKeeping
  VERSION = 4
end
