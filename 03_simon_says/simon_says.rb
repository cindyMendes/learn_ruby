# #write your code here


# require "simon_says"

# describe "Simon says" do
#   describe "echo" do
#     it "should echo hello" do
#       expect(echo("hello")).to eq("hello")
#     end

#     it "should echo bye" do
#       expect(echo("bye")).to eq("bye")
#     end
#   end

#   describe "shout" do
#     it "should shout hello" do
#       expect(shout("hello")).to eq("HELLO")
#     end

#     it "should shout multiple words" do
#       expect(shout("hello world")).to eq("HELLO WORLD")
#     end
#   end

#   describe "repeat" do
#     it "should repeat" do
#       expect(repeat("hello")).to eq("hello hello")
#     end

#     # Wait a second! How can you make the "repeat" method
#     # take one *or* two arguments?
#     #
#     # Hint: *default values*
#     it "should repeat a number of times" do
#       expect(repeat("hello", 3)).to eq("hello hello hello")
#     end
#   end

#   describe "start_of_word" do
#     it "returns the first letter" do
#       expect(start_of_word("hello", 1)).to eq("h")
#     end

#     it "returns the first two letters" do
#       expect(start_of_word("Bob", 2)).to eq("Bo")
#     end

#     it "returns the first several letters" do
#       s = "abcdefg"
#       expect(start_of_word(s, 1)).to eq("a")
#       expect(start_of_word(s, 2)).to eq("ab")
#       expect(start_of_word(s, 3)).to eq("abc")
#     end
#   end

#   describe "first_word" do
#     it "tells us the first word of 'Hello World' is 'Hello'" do
#       expect(first_word("Hello World")).to eq("Hello")
#     end

#     it "tells us the first word of 'oh dear' is 'oh'" do
#       expect(first_word("oh dear")).to eq("oh")
#     end
#   end

#   describe "titleize" do
#     it "capitalizes a word" do
#       expect(titleize("jaws")).to eq("Jaws")
#     end

#     it "capitalizes every word (aka title case)" do
#       expect(titleize("david copperfield")).to eq("David Copperfield")
#     end

#     it "doesn't capitalize 'little words' in a title" do
#       expect(titleize("war and peace")).to eq("War and Peace")
#     end

#     it "does capitalize 'little words' at the start of a title" do
#       expect(titleize("the bridge over the river kwai")).to eq("The Bridge over the River Kwai")
#     end
#   end

# end
# TestFirst.org


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
