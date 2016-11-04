require 'pry'

class Robot
  LETTERS = ("A".."Z").to_a
  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    initialize
  end

  def generate_name
    "%s%s%03d" % [LETTERS.delete(LETTERS.sample), LETTERS.delete(LETTERS.sample), rand(999)]
  end
end

class BookKeeping
  VERSION = 2
end
