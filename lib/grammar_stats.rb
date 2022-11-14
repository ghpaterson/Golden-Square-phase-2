class GrammarStats
    def initialize
        @total_count = 0
        @correct_count = 0
        @fail_count = 0
    end
  
    def check(text) 
        @total_count +=1
        first_letter = text.split("")[0]
        last_letter = text.split("")[-1]
        punctuation = ["!", ".", "?"]
        if first_letter == first_letter.upcase && punctuation.include?(last_letter)
            @correct_count += 1
            return true
        else 
            @fail_count += 1
            return false
        end
    end 
  
    def percentage_good
        if @fail_count == 0
            return 100
        end
        
        overall_percentage = (@correct_count.to_f / @total_count) * 100
        return overall_percentage
    end
  end

  