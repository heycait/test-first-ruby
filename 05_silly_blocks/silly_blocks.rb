def reverser
  yield.split(" ").collect(&:reverse).join(" ")
end

def adder(*add_three)
  add_three.empty? ? yield.next : yield.next.next.next
end

def repeater(number = 0)
  if number == 0
    yield
  else
    number.times do |num|
      yield
    end
  end
end
