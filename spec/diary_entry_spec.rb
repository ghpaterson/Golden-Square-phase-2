require 'diary_entry'

RSpec.describe DiaryEntry do 
    it "Returns the title of the entry" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.title()
        expect(result).to eq "title"
    end

    it "Returns the contents of the entry" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.contents()
        expect(result).to eq "contents"
    end

    it "Returns the word count of the contents" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.count_words()
        expect(result).to eq 1
    end

    it "Returns the minutes it will take to read the contents" do
        diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
        result = diary_entry.reading_time(5)
        expect(result).to eq 2
    end

    it "Returns the first five words, given 2wpm and 2min" do
        diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
        result = diary_entry.reading_chunk(2, 2)
        expect(result).to eq "one two three four"
    end

    it "Returns the middle five words, given 2wpm and 2min, twice" do
        diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
        diary_entry.reading_chunk(2, 2)
        result = diary_entry.reading_chunk(2, 2)
        expect(result).to eq "five six seven eight"
    end

    it "Returns the final five words, given 2wpm and 2min, three times" do
        diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
        diary_entry.reading_chunk(2, 2)
        diary_entry.reading_chunk(2, 2)
        result = diary_entry.reading_chunk(2, 2)
        expect(result).to eq "nine ten 11 12"
    end


end