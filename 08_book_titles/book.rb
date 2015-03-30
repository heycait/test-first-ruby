class Book
  def title=(book)
    all_capitalized = book.gsub!(/(\A|\s)(\w)/) {|letter| letter.upcase}
    
    conj_prep_art = {'The' => 'the', 'A ' => 'a ', 'By' => 'by', 'On' => 'on', 'For' => 'for', 'Of' => 'of', 
      'Are' => 'are', 'With' => 'with', 'Just' => 'just', 'But' => 'but', 'And' => 'and', 'To' => 'to', 
      'In' => 'in', 'Has' => 'has', 'Some' => 'some', 'Over' => 'over', 'An' => 'an'}
    
    conj_prep_art.each do |capital, lowercase|
      all_capitalized.gsub!(capital,lowercase)
    end
    
    book.gsub!(/(\A\w)/) {|firstword| firstword.upcase}
    
    @title = book
  end

  def title
    @title
  end
end



  

