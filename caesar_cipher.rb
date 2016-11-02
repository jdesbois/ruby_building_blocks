@con_array = []
@output = []

def caesar_cipher(string, num)
  letters = string.split("")
    letters.each do |letter|
    letter = letter.ord
    new_letter = letter - num
    @con_array.push(new_letter)
    end
    @con_array.each do |letter|
      @output.push(letter.chr)
    end
end

puts "Please input phrase to convert: "
string = gets.chomp
puts "Please enter shift factor 0-9: "
num = gets.chomp.to_i

caesar_cipher(string, num)
