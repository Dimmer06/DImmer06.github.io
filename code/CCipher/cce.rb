def encrypt(string, shift)
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
      if (letter > 64 && letter < 90 )
        if (letter - shift < 65)
          letter = 91 - (shift - (letter - 65))
        else
          letter = letter - shift
        end
      #end of uppercase
      else
      #lowercase
        if (letter - shift < 97)
          letter = 123 - (shift - (letter - 97))
        else
          letter = letter - shift
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
encrypt(string, shift)
