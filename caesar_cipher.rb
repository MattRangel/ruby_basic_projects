# caesar_cipher.rb

def caesar_cipher(string, shift_amount)
  string.chars.map do |character|
    shift_amount %= 26
    if /[A-Za-z]/.match?(character)
      shift_amount.times { character = character.next.chr }
    end
    character
  end.join
end

puts caesar_cipher("What a string!", 5)
