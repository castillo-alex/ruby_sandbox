require 'pry-byebug'

class CaesarCipher
  attr_reader :str
  attr_accessor :shift

  def initialize(str)
    @str = str 
  end

  def cipher_hash
    (:a..:z).map.with_index { |s, i| [s, i] }.to_h
  end

  def char_to_sym(char)
    char.to_sym
  end

  def sym_found(sym)
    cipher_hash[sym]
  end

  def calc_boundary(sym)
    shift - (cipher_hash.size - cipher_hash[sym])
  end

  def sym_in_bounds?(sym)
    true if calc_boundary(sym) < 1
  end

  def sym_out_of_bounds?(sym)
    true if !sym_in_bounds?(sym)
  end

  def out_of_bounds_shift(sym)
    calc_boundary(sym)
  end

  def cipher_str
    str.chars.map do |char|
      sym = char_to_sym char

      # binding.pry
      # return sym unless sym_found sym
      # binding.pry

      if sym_found sym and sym_in_bounds?(sym)
        cipher_hash.key(cipher_hash[sym] + shift)
      elsif sym_found sym and sym_out_of_bounds?(sym)
        cipher_hash.key(out_of_bounds_shift sym)
      else
        sym
      end
    end
  end
end

# test_str = CaesarCipher.new('!test?')
test_str = CaesarCipher.new('!what')
test_str.shift = 5

# p test_str.str
# p test_str.shift
# p test_str.cipher_hash
p test_str.cipher_str