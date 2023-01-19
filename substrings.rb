# substrings.rb

def substrings(string, dictionary)
  substring_hash = Hash.new(0)
  dictionary.each do |word|
    word_count = string.downcase.scan(word).size
    if word_count > 0
      substring_hash[word] += word_count
    end
  end
  substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
