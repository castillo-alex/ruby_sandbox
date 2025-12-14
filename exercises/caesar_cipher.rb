# sample = "This is a test!"

# class CaesarCipher
#   attr_reader :str

#   def initialize(str)
#     @str = str
#   end

#   def chars_arr
#     ('a'..'z').to_a
#   end

#   def is_low?(char)
#     char == char.downcase
#   end

#   def find_char_index(char)
#     chars_arr.index 
#   end
# end

# test_cipher = CaesarCipher.new("test string")

# p test_cipher.chars_arr


class CaesarCipher
  attr_reader :str, :shift

  def initialize(str, shift)
    @str = str
    @shift
  end

  def char_arr 
    ('a'..'z').to_a
  end

  def char_index(char)
    charr_arr.index char.downcase
  end

  def low_char_hash
    char_arr.map.with_index { |s, i| [i, s] }.to_h
  end

  def up_char_hash
    low_char_hash.map { |k, v| [k, v.upcase] }.to_h
  end

  def cipher_hash
    {
      low: low_char_hash,
      up: up_char_hash
    }
  end

  def is_low?(char)
    char == char.downcase
  end

  def char_in_bounds(char_index)
    char_index < char_arr.length
  end

  def lookup_in_bounds(char, shift)
    if is_low?
      cipher_hash.dig(:low, char_index + shift)
    else
      cipher_hash.dig(:up, char_index + shift)
    end
  end

  def lookup_out_of_bounds(char, shift)
    if is_low?
      cipher_hash.dig(:low, (chars.length + shift - char_index - 1))
    else
      cipher_hash.dig(:up, (chars.length + shift - char_index - 1))
    end
  end
  
end

test_cipher = CaesarCipher.new('testing')

# p test_cipher.low_char_hash
# p test_cipher.up_char_hash
p test_cipher.cipher_hash
