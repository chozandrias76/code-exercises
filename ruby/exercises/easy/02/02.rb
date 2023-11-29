require 'debug'
def find_longest_word(text)
  longest_word = ''
  length = 0
  index = 0
  text.each_char.with_index do |character, idx|
    if character.match(/\s/) || idx == text.length
      word = text[(index.positive? ? index + 1 : index)..idx-1] # Captures everything between the last marked index and the space
      index = idx
      if word.length > length
        length = word.length
        longest_word = word
      end
    end
  end
  longest_word
end