class Temperature
  def initialize(options = {})
    @options = options
  end
  
  def in_fahrenheit
    @options.key?(:f) ? @options[:f] : (@options[:c] * 9.0/5) + 32
  end
  
  def in_celsius
    @options.key?(:c) ? @options[:c] : (@options[:f] - 32) * 5.0/9
  end
 

  def self.from_celsius(num)
     self.new(:c => num)
  end
  
  def self.from_fahrenheit(num)
     self.new(:f => num)
  end
end

