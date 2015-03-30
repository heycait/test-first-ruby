class RPNCalculator
  def initialize
    @stack = []
  end
  
  def push(number)
    @stack.push(number)
  end

  def pop
    raise "calculator is empty" if @stack.empty?
    @stack.pop
  end
  
  def plus
    second_num = pop
    first_num = pop
    @stack.push(first_num + second_num)
  end
  
  def minus
    second_num = pop
    first_num = pop
    @stack.push(first_num - second_num)
  end
  
  def times
    second_num = pop
    first_num = pop
    @stack.push(first_num * second_num)
  end
  
  def divide
    denominator = pop
    numerator = pop
    @stack.push(numerator.to_f / denominator.to_f)
  end

  def value
    @stack.last
  end
end