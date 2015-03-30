def add(x,y)
  addition = x + y
end



def subtract(x,y)
  substraction = x - y
end



def sum(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  return sum
end


def multiply(*number)
  total = 1
  number.each do |number|
    total *= number
  end
  return total
end



def power(x,y)
  x**y
end



def factorial(number)
  total = 1
  array = [*(1..number)]    #asterick = splat operator
  array.each do |number|    #makes the numbers in the range separate elements in the array
    total *= number
  end
  return total
end
