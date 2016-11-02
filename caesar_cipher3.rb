puts "Please enter string to be converted: "
string = gets.chomp

puts "Please enter number to shift 1-9: "
shift = gets.chomp.to_i

@alphabet = ('a'..'z').to_a + ("A".."Z").to_a

@output = ""

def caesar_cipher(string, shift)

  string.each_char do |x|
    if @alphabet.include?(x)
      @output = @output + @alphabet[@alphabet.index(x) - shift]
    else
      @output = @output + x
    end

  end
  puts @output
end

caesar_cipher(string, shift)
