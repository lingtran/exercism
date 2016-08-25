class Raindrops
  PRIME_FACTORS = {
                    "3" => 'Pling',
                    "5" => 'Plang',
                    "7" => 'Plong'
                  }

  def self.convert(number)
    @result = []
    @number = number
    check_for_prime_factors
    format_result
  end

  def self.check_for_prime_factors
    PRIME_FACTORS.each_pair { |prime, output| @result.push(output) if is_divisible_by(prime) }
  end

  def self.is_divisible_by(prime)
    (@number % prime.to_i) == 0
  end

  def self.format_result
    @result.empty? ? @number.to_s : @result.join
  end
end

module BookKeeping
  VERSION = 2
end
