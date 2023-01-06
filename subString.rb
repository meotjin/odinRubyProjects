# credit of below method URL: shorturl.at/frKL1
def count_em(str, substr)
    str.scan(/(?=#{substr})/).count
end

def substrings(string, dictionary)
    dictionary.reduce(Hash.new(0)) do |hash, substring| 
        count = count_em(string, substring)
        if count != 0 then
            hash[substring] += count;
        end
        hash
    end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]