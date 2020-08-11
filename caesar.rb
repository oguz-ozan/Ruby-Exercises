require 'pry'

def caesar_cipher(str, num)
  up_alphabet = ('A'..'Z').to_a
  down_alphabet = ('a'..'z').to_a
  cipher_string = ""
  str.each_char do |char|
    if char == char.upcase
      cipher_string += up_alphabet[(up_alphabet.index(char) + num) % 26]
    else
      cipher_string += down_alphabet[(down_alphabet.index(char) + num) % 26]
    end
  end
  cipher_string
end

puts "enter a number"
number = gets.chomp.to_i
puts "enter a string"
string = gets.chomp.to_s


puts caesar_cipher(string,number)
