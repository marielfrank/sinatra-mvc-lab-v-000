class PigLatinizer
  def is_vowel?(letter)
    ["a", "e", "i", "o", "u"].include?(letter)
  end

  def piglatinize(word)
    letters = word.split("")

    if is_vowel?(letters[0])
      letters.join += "way"
    else
      cons = []
      i = 0
      until is_vowel?(letters[i])
        cons << letters[i]
        i += 1
      end
      # binding.pry
      ordway = (letters[i..-1] + cons).join
      ordway += "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
