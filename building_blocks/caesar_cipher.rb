def caesar_cipher(word, shift)
  chars = word.codepoints
  chars.collect! do |i|
    if i.between?(97, 122)
      ((i-97+shift)%26+97).chr
    elsif i.between?(65, 90)
      ((i-65+shift)%26+65).chr
    else
      i.chr
    end
  end
  chars.join
end
puts caesar_cipher("What a string!", 5)
