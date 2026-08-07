def caesar_cipher(string, shift_factor)
  letters_arry = string.split("")
  shifted_letters_arry = letters_arry.map do |letter|
    if lower_letter?(letter) == true
      ((letter.getbyte(0)-97+shift_factor)%26+97).chr
    elsif upper_letter?(letter) == true
      ((letter.getbyte(0)-65+shift_factor)%26+65).chr
    else 
      letter
    end
  end
  shifted_letters_arry.join
end

def upper_letter?(char)
  char.match?(/[A-Z]/)
end

def lower_letter?(char)
  char.match?(/[a-z]/)
end