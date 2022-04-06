def caesar_cipher(string, shift_factor)
  string_array = string.split('')
  new_string_array = string_array.map do |letter|
    conv_letter = letter.ord #Convert to ordinal numbers
    unless (conv_letter >= 32 && conv_letter <= 64) #check for punctuation or odd characters
      conv_letter += shift_factor
      if ((conv_letter > 90 && conv_letter < 97) || (conv_letter > 122)) #check for need for wrapping (upcase and downcase)
        conv_letter -= 26
      end
    end
    new_letter = conv_letter.chr 
  end
  new_string = new_string_array.join  
end 

p caesar_cipher("What a string!", 5)