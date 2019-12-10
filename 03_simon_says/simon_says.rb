# #write your code here

def echo(word)
    return word
end 


def shout(word)
    return word.upcase
end 


def repeat(word, num = 2)
    string = ""
    num.times do 
        string << word
        string << " "
    end 
    return string.strip()
end 


def start_of_word(word, num)
    array = word.chars()  
    string = ""
    1.upto(num) do |n|
      string << array[n-1]
    end 
    return string 
end


def first_word(string)
    return string.split.first
end
 
 
def titleize(string)
    little_words = ["for", "or", "but", "nor", "the", "is", "to", "by", "an", "yet", "so", "at", "of", "with", "without", "and", "over", "a"]
    word_array = string.split(" ")
	word_array.each do |w|
	    little_words.each do |word|
	        if w.downcase != word
	            w.capitalize!
	        else
	            w.downcase!
	            break
            end
        end
	end
	word_array[0].capitalize!
    result = word_array.join(" ")
    return result
end


def djjdjd(hdh, num = 2)