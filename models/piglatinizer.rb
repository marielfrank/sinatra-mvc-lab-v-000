class PigLatinizer
  def is_vowel?(letter)
    ["a", "e", "i", "o", "u"].include?(letter)
  end
  
  def piglatinize(word)
    letters = word.split("")

    if letters[0].is_vowel?
      letters.join += "way"
    else
      cons = letters[0]
      i = letters[0]
      until !!i.is_vowel?
        cons << i
        i += 1
      end
      ordway = letters[i..-1] + cons
      ordway.join += "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect do |word|
      word.piglatinize
    end.join(" ")
  end
end
