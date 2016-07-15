class Hamming
  VERSION = 2

  def self.compute(strand_one, strand_two)
    verify_equivalent_lengths(strand_one, strand_two)

    (0..strand_one.length).count do |i|
      strand_one[i] != strand_two[i]
    end
  end

  def self.verify_equivalent_lengths(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length
  end
end
