def grammar_check(string)
    first_letter = string.split("")[0]
    last_letter = string.split("")[-1]
    punctuation = ["!", ".", "?"]
    if first_letter == first_letter.upcase && punctuation.include?(last_letter)
        return true
    else 
        return false
    end
end