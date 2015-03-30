def translate(string)
  string_array = string.split
  pig_latin = string_array.collect do |word|
    if word.match(/(\A|\s)[aeiou]/)
      word + "ay"
    elsif word.match(/(\A|\s)[bcdfghjklmnp(qu)rstvwxyz][bcdfghjklmnp(qu)rstvwxyz][bcdfghjklmnp(qu)rstvwxyz]/)
      word.sub(/.../, '') + word[0..2] + "ay"
    elsif word.match(/(\A|\s)[bcdfghjklmnp(qu)rstvwxyz][bcdfghjklmnp(qu)rstvwxyz]/)
      word.sub(/../, '') + word[0..1] + "ay"
    elsif word.match(/(\A|\s)[bcdfghjklmnp(qu)rstvwxyz]/)
      word.sub(/./, '') + word[0] + "ay"   
    end
  end
return pig_latin.join(" ")
end
