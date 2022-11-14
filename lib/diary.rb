class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
      total_words = 0
      @entries.each do |entry|
        total_words += entry.count_words
        end
        return total_words
    end
  
    def reading_time(wpm)
      total_time = 0
      @entries.each do |entry|
        total_time += entry.reading_time(wpm)
      end
      return total_time
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          return readable_entries(wpm, minutes).max_by(&:count_words)
    end

    private

    def readable_entries(wpm, minutes)
        return @entries.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
    end
end