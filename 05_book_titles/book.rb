class Book
    
  attr_accessor :title
  
  def title=(string)
      words = string.capitalize.split(" ")
      little_words = ["and", "a", "the", "from", "but", "in", "or", "at", "on", "for", "of", "an"]
      outcome = []
      
      words.each do |word|
          if little_words.include? word
              outcome << word
          else
              outcome << word.capitalize
          end
      end
      @title = outcome.join(" ")
  end 
 
end




