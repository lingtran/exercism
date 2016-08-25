class Complement
  COMPLEMENT_KEY = { 'G': 'C',
                     'C': 'G',
                     'T': 'A',
                     'A': 'U'
                    }

  def self.of_dna(vars)
    if check_invalid?(vars)
      return ''
    else
      return vars.chars.map { |var| COMPLEMENT_KEY[var.to_sym] }.join
    end
  end

  def self.check_invalid?(vars)
    vars.include?('X')
  end
end

module BookKeeping
  VERSION = 4
end
