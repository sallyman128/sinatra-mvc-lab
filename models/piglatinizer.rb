class PigLatinizer
  
  def initialize

  end

  def piglatinize(phrase)
    phrase.split.map do |word|
      if word[0].match(/[aeiou]/i)
        word = word + "way"
      else
        first_vowel_index = word.index(word.match(/[aeiou]/).to_s)
        word = word[first_vowel_index..] + word[0..first_vowel_index-1] + "ay"
      end
      word
    end.join(" ")
  end
end