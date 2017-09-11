class PigLatinizer
  def piglatinize(word)
    if word[0].include?('/[aeiou]/')
      word += "way"
    end
    word
  end

  def to_pig_latin(phrase)

  end
end
