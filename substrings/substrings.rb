dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  words = []
  dictionary.each do |item| 
      word.split(" ").each do |wordy|
      if wordy.include? item
        words.push(item)
      end
    end
  end
  words.reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    result
  end
end

puts "enter a word"
word = gets.chomp.to_s.downcase

puts substrings(word,dictionary)