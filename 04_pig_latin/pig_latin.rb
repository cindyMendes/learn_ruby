def translate(string)
    
    words = string.split(" ")
    
    vowels = ["a", "e", "i", "o", "u", "y"]
    two_letter_consonants = ["ch", "qu", "br"]
    three_letter_consonants = ["thr", "squ", "sch"]
    other = ["the"]
    
    outcome = [];
    
    words.each do |word|
        if vowels.include? word[0]
            w = word + 'ay'
            outcome.push w
        else
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                first_three_letters = word.slice!(0,3)
                w = word + first_three_letters + "ay"
                outcome.push w
                
            elsif  two_letter_consonants.include? word[0] + word[1]
                first_two_letters = word.slice!(0,2)
                w = word + first_two_letters + 'ay'
                outcome.push w
                
            elsif other.include? word[0] + word[1] + word[2]
                first_three_letters = word[2] + word[0] + word[1]
                w = first_three_letters + 'ay'
                outcome.push w
                
            else
                first_letter = word.slice!(0)
                w =  word + first_letter + 'ay'
                outcome.push w
            end 
    
        end 
    end
    return outcome.join(" ")
end 
