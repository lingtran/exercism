require 'pry'

class Robot
  LETTERS = ("A".."Z").to_a

  attr_reader :name, :letters

  def initialize
    @name = generate_name
  end

  def reset
    initialize
  end

  def modify_letters_when(letter)
    LETTERS.delete(letter)
  end

  def get_letter
    LETTERS.sample
  end

  def generate_name
    "%s%s%03d" % [modify_letters_when(get_letter), modify_letters_when(get_letter), rand(999)]
  end

end

class BookKeeping
  VERSION = 2
end
