alphabet = "abcdefghijklmnopqrstuvwxyz"
letters = alphabet.split("")
@cipher = Hash.new(0)
num = 1
letters.each do |letter|
  @cipher[letter] = num
  num += 1
end
@cipher.sort_by {|a,b| a}
@convert_array = []
@result_array = []
puts "Please enter string to convert:"
string = gets.chomp
puts "Please enter number to shift 1-9: "
shift = gets.chomp.to_i
puts
puts

def caesar_cipher(string, shift)
    split_string = string.split("")
    split_string.each do |x|
      if x == ["a".."z"]
      x = @cipher[x] + shift
      @convert_array.push(x)
    else
      @convert_array.push(x)
    end
    end
    @convert_array.each do |y|
      if y >= 27
        y = (y-26) + shift
        y = @cipher.key(y)
        @result_array.push(y)
      else
        y = @cipher.key(y)
        @result_array.push(y)
      end
    end
    puts @result_array.join("")
end

caesar_cipher(string, shift)
