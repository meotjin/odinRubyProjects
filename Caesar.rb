def caesar_cipher (string, key)
    array = string.split('')
    array.map! do |letter|
        if(letter.match?(/[[:alpha:]]/)) then
            #credit for the above isAlpha URL: shorturl.at/mvx79
            ascii = letter.ord
            max = ascii < 91 ? 91 : 123;
            letter = ascii+key < max ? (ascii+key).chr : (65+((ascii+key)/max)).chr
        end
        letter
    end
    array.join
end