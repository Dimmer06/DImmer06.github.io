def decrypt(string, shift)
  phrase = ""
  shift = shift.to_i
  string.split('').each { |letter|
    letter = letter.ord
    #special characters
    if (letter < 65)
      phrase += letter.chr
    elsif (letter > 90 && letter < 97)
      phrase += letter.chr
    elsif (letter > 123)
      phrase += letter.chr
    else
    #end special characters
    #uppercase
      if (letter > 64 && letter < 91 )
        if (letter + shift > 90)
          letter = 65 + (shift - (91 - letter))
        else
          letter = letter + shift
        end
      #end of uppercase
      #lowercase
      else
        if (letter + shift > 122)
          letter = 97 + (shift - (123 - letter))
        else
          letter = letter + shift
        end
      end
    #end of lowercase
      phrase += letter.chr
    end
  }
  puts phrase
end

puts "String?"
string = gets.chomp
puts "Shift?"
shift = gets.chomp
decrypt(string, shift)
