class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  
  def time_string
    hours = @seconds / 3600 
    hours_string = hours.to_s.rjust(2, '0')

    minutes = (@seconds % 3600) / 60
    minutes_string = minutes.to_s.rjust(2, '0')

    seconds = (@seconds % 3600) % 60
    seconds_string = seconds.to_s.rjust(2, '0')
    new_time = "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end 
end

