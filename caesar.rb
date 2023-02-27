def caesar_cipher(string, shift)

    #string to array
    #iterate through array
    #for each char
        #check if char
            #convert to ascii
            #apply shift factor
                #unless char.ord + shift > 90 or 122
                #if sum > max then (sum % max).chr
            #convert back to char
    #array back to string
    #return string

    #upper 41-90 inclusive, lower 97-122 inclusive


    p string
    chars = string.split("")
    new_chars = []

    p chars

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


    p new_chars

    new_string = new_chars.join
    p new_string
    new_string

    #string.split("").each {|char| (char.ord + shift).chr if char.between?(41, 90) || char.between? (97,122)}
end

caesar_cipher("What a string!", 5)
