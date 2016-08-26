class Pangram
  ALPHABET = ("a".."z").to_a

  def self.is_pangram?(string)
    ALPHABET.all? { |letter| string.downcase.chars.include?(letter) }
  end
end

module BookKeeping
  VERSION = 2
end
