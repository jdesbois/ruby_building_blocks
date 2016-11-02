dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

@substring_hash = Hash.new(0)

substring_array = []

def substrings(string, dictionary)
  string = string.downcase
  dictionary.each do |y|
    if string.match(/#{y}/)
      @substring_hash[y] += 1
    end

  end

puts @substring_hash

end





substrings("Howdy partner, sit down! How's it going?", dictionary)
