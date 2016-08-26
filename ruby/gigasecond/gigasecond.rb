class Gigasecond
  GIGASECOND = 10**9

  def self.from(initial_date)
    initial_date + GIGASECOND
  end
end

module BookKeeping
  VERSION = 5
end
