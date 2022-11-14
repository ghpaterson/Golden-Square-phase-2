class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @counter = -1
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
        return 0 if @contents.empty?
        return @contents.count(" ") + 1 #counting spaces and adding 1 to get word count
    end
  
    def reading_time(wpm) 
      return (count_words.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.

      chunk_length = wpm * minutes
      words = contents().split 

      @counter +=1
      previous_words_read = @counter * chunk_length

      return words[previous_words_read...chunk_length + previous_words_read].join(" ")
    end
end