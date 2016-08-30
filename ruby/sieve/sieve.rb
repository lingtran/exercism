class Sieve
  attr_accessor :range
  attr_reader   :primes

  def initialize(limit)
    @range  = (2..limit).to_a
    @primes = find_primes_if_valid_limit(limit)
  end

  def find_primes_if_valid_limit(limit)
    (limit < 2) ? @primes = [] : calculate(@primes=Array.new)
  end

  private

    def calculate(primes)
      begin
        target = range.shift
        primes << target
        range.delete_if { |num| num % target == 0 }
      end until range.empty?
      primes
    end
end
