class Friend
  def greeting(who = nil)
    if who == nil
      "Hello!"
    elsif who != nil
      "Hello, #{who}!"
    end
  end
end