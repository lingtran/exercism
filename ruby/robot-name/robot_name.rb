require 'pry'

class Robot
  attr_reader :name

  def initialize
    @name = NameGenerator.get_name
  end

  def reset
    initialize
  end
end

class NameGenerator
  ALPHABET = Array("A".."Z")

  def self.get_letter
    ALPHABET.shuffle!.pop
  end

  def self.get_name
    "%s%s%03d" % [get_letter, get_letter, rand(999)]
  end
end

class BookKeeping
  VERSION = 2
end
