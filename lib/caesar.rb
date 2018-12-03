
def caesar_decode(string, offset)
    #insert lowercase and uppercase alphabet. to_a makes it an array then join as a string
    lowercase_alphabet= ("a".."z").to_a.join
    uppercase_alphabet= ("A".."Z").to_a.join
    if string == string.downcase
        split_alphabet= lowercase_alphabet.chars
        offset_alphabet = split_alphabet.rotate(offset%26).join
        return string.tr(offset_alphabet,lowercase_alphabet)
    elsif string == string.upcase
        split_alphabet2= uppercase_alphabet.chars
        offset_alphabet = split_alphabet2.rotate(offset%26).join
        return string.tr(offset_alphabet,uppercase_alphabet)
    else 
        all_alphabet = lowercase_alphabet + uppercase_alphabet
        split_alphabet3= all_alphabet.chars
        offset_alphabet = split_alphabet3.rotate(offset%26).join
        return string.tr(offset_alphabet,all_alphabet).capitalize
    end 
end

#puts "Enter a string:"
#user_string = gets.chomp
#puts "Enter an offset:"
#user_offset = gets.chomp.to_i

#caesar_decode(user_string,user_offset)

def caesar_encode(string, offset)
    #insert lowercase and uppercase alphabet. to_a makes it an array then join as a string
    lowercase_alphabet= ("a".."z").to_a.join
    uppercase_alphabet= ("A".."Z").to_a.join
    #combine lowercase and uppercase alphabet
    #all_alphabet = lowercase_alphabet + uppercase_alphabet
    #creates an array of of the characters in all_alphabet
    if string == string.downcase
        split_alphabet= lowercase_alphabet.chars
        offset_alphabet = split_alphabet.rotate(offset%26).join
        return string.tr(lowercase_alphabet,offset_alphabet)
    elsif string == string.upcase
        split_alphabet2= uppercase_alphabet.chars
        offset_alphabet = split_alphabet2.rotate(offset%26).join
        return string.tr(uppercase_alphabet,offset_alphabet)
    else 
        all_alphabet = lowercase_alphabet + uppercase_alphabet
        split_alphabet3= all_alphabet.chars
        offset_alphabet = split_alphabet3.rotate(offset%26).join
        return string.tr(all_alphabet,offset_alphabet).capitalize
    end 
end

#puts "Enter a string:"
#user_string = gets.chomp
#puts "Enter an offset:"
#user_offset = gets.chomp.to_i

#caesar_encode(user_string,user_offset)