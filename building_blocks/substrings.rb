def substrings(phrase, dictionary)
  phrase = phrase.downcase.split
  counts = Hash.new(0)
  phrase.each do |main|
    puts main
    dictionary.each do |subword|
      print "\t#{subword}"
      if main.include?subword
        print ": yes"
        counts[subword] += 1
      end
      print("\n")
    end
  end
  counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
