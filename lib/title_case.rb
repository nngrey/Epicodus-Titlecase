def capitalize(word)
  word.capitalize
end

def find_exceptions(word)
  exceptions = ["to", "if", "the", "and"]
  exceptions.include?(word.downcase)
end


def title_case(phrase)
  phrase_arr = phrase.split
  phrase_arr.map! do |word| 
    if find_exceptions(word)
      word.downcase
    else word.capitalize
    end
  end
  phrase_arr[0] = phrase_arr[0].capitalize
  new_phrase = phrase_arr.join(" ")
end

puts title_case ("hello dolly")

