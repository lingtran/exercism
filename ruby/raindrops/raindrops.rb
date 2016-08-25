class Raindrops
  PRIME_FACTORS = {
                    "3" => 'Pling',
                    "5" => 'Plang',
                    "7" => 'Plong'
                  }

  def self.convert(number)
    result = check_for_prime_factors(number)
    format_result(number, result)
  end

  def self.check_for_prime_factors(number)
    result = []
    PRIME_FACTORS.each_pair { |prime, output| result.push(output) if is_divisible_by(number, prime) }       
    return result
  end

  def self.is_divisible_by(number, prime)
    (number % prime.to_i) == 0
  end

  def self.format_result(number, result)
    if result.empty?
      return number.to_s
    else
      return result.join
    end
  end
end

module BookKeeping
  VERSION = 2
end
