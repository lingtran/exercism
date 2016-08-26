class Squares
  attr_reader :collection

  def initialize(number)
    @collection = (0..number).to_a
  end

  def square_of_sum
    (collection.reduce(:+))**2
  end

  def sum_of_squares
    collection.reduce(0) { |sum, num| sum += num**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
