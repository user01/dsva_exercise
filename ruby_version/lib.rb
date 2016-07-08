# File:  simple_number.rb

class Lib


  def self.trial(value)
    raise unless value.is_a?(Numeric)
    self.trial_internal(value)
  end
  
  private
  def self.trial_internal(value)
    runs = 0
    while value > 1
      if value % 2 == 0
        value /= 2
      else
        value = (value * 3) + 1
      end
      runs += 1
    end
    runs
  end
  
end
