class Squares
  attr_reader :collection
  attr_accessor :difference

  def initialize(number)
    if number != 0
      @collection = (1..number).to_a
      @difference = find_difference
    else
      @difference = 0
    end
  end

  def square_of_sum
    (collection.reduce(:+))**2
  end

  def sum_of_squares
    collection.reduce(0) { |sum, num| sum += num**2 }
  end

  def find_difference
    @difference = square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
