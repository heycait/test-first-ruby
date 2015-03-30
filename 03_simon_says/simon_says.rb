def echo(string)
  return "#{string}"
end



def shout(string)
  return "#{string.upcase}"
end



def repeat(string, number_times = 2)
  return ("#{string} " * number_times).strip
end



def start_of_word(word, number)
  word.split(//)
  return word[0...number]
end



def first_word(string)
  string_array = string.split(/\s/)
  string_array[0]
end




def titleize(string)
  all_big = string.gsub(/(\A|\s)\w/) {|letter| letter.upcase}
  
  little_words = {'The' => 'the', 'A' => 'a', 'By' => 'by', 'On' => 'on', 'For' => 'for', 'Of' => 'of', 
    'Are' => 'are', 'With' => 'with', 'Just' => 'just', 'But' => 'but', 'And' => 'and', 'To' => 'to', 
    'In' => 'in', 'Has' => 'has', 'Some' => 'some', 'Over' => 'over'}
    
  little_words.each do |capital, lowercase|
    all_big.gsub!(capital,lowercase)
  end
  
  all_big.gsub(/(\A\w)/) {|firstword| firstword.upcase}
end
