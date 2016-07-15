class Hamming
  VERSION = 1
  
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless Hamming.verify_equivalent_lengths(strand_one, strand_two)

    counter = 0

    strand_one.chars.each_with_index do |element, index|
      counter +=1 if strand_one[index] != strand_two[index]
    end

    counter
  end

  def self.verify_equivalent_lengths(strand_one, strand_two)
    strand_one.length == strand_two.length
  end
end
