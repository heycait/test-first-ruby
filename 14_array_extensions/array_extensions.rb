class Array
  
  def sum
    inject(0){|sum, number| sum + number }
  end
  
  def square
    collect {|number| number **2 }
  end
  
  def square!
    collect! {|number| number **2 }
  end
  
end
    


