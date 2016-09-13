require 'pry'

class Fixnum
  ARABIC_TO_ROMAN_NUMERALS_KEY = {  1 => 'I',
                                    4 => 'IV',
                                    5 => 'V',
                                    9 => 'IX',
                                    10 => 'X',
                                    50 => 'L',
                                    40 => 'XL',
                                    90 => 'XC',
                                    100 => 'C',
                                    400 => 'CD',
                                    500 => 'D',
                                    900 => 'CM',
                                    1000 => 'M'
                                  }

  def to_roman
    get_digits(self).map.with_index do |num, index|
      case
      when num == 4 || num == 9
        apply_subtraction_rule(num, index)
      when (1..3).include?(num)
        apply_addition_rule_with_one(index, num)
      when (5...10).include?(num)
        apply_addition_rule_with_five(index) + apply_addition_rule_with_one(index, num%5)
      else
        next
      end
    end.join
  end

  def get_digits(input)
    input.to_s.chars.map(&:to_i)
  end

  def apply_addition_rule_with_one(index, magnitude)
    ARABIC_TO_ROMAN_NUMERALS_KEY[1 * (10 ** index)] * magnitude
  end

  def apply_addition_rule_with_five(index)
    ARABIC_TO_ROMAN_NUMERALS_KEY[5 * (10 ** index)]
  end

  def apply_subtraction_rule(num, index)
    ARABIC_TO_ROMAN_NUMERALS_KEY[num * (10 ** index)]
  end
end
