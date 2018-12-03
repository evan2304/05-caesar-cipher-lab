def caesar_decode(string, offset)
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

def caesar_encode(string, offset)
    lowercase_alphabet= ("a".."z").to_a.join
    uppercase_alphabet= ("A".."Z").to_a.join
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
