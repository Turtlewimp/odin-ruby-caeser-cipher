def caesar_cipher(string, shift)

    chars = string.split("")
    new_chars = []

    chars.each do |char|
        if char.upcase.ord.between?(65,90)
            ascii_value = char.ord + shift
            if (char.upcase.ord + shift) > 90
                ascii_value -= 26 
            end
            new_chars.push((ascii_value).chr)
        else
            new_chars.push(char)
        end  
    end

    new_string = new_chars.join
    new_string

end