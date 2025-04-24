def substrings()
  dictionary = ['we', 'food', 'hi', 'time', 'the', 'place', 'or', 'and', 'but', 'can', 'love', 'is', 'are', 'cat', 'dog', 'a', 'what']
  puts 'What will be the phrase?'
  string = gets.chomp
  words = string.downcase.split(" ")
  def word_instance(words, dictionary)
    words.each_with_object(Hash.new(0)) do |word, hash|
      dictionary.each do |dictionary_word|
      if word.include?(dictionary_word)
        hash[dictionary_word] += 1 
      end
      end
    end
  end
  puts 'Occurrences of the words in dictionary:'
  p word_instance(words, dictionary)
end

substrings