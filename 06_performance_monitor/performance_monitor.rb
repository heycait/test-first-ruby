def measure (n = 1)
  start = Time.now
  if n == 1
    yield
    Time.now - start
  elsif n != 1
    total_time = 0
    n.times do 
      yield 
      total_time = Time.now - start
    end
    total_time / n
  end
end


