class PigLatinizer
  def piglatinize(word)
    letters = word.split("")

    if letters[0].include?('/[aeiou]/')
      letters.join += "way"
    word
  end

  def to_pig_latin(phrase)

  end
end
