require 'diaryentry'

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("title_1", "contents_1")
        expect(diary_entry.title).to eq "title_1"
        expect(diary_entry.contents).to eq "contents_1"
    end

    describe "#count_words" do
        it "returns the number of words in the contents" do
            diary_entry = DiaryEntry.new("title_1", "contents_1")
            expect(diary_entry.count_words).to eq 1
        end

        it "returns zero if there are no contents" do
            diary_entry = DiaryEntry.new("title_1", "")
            expect(diary_entry.count_words).to eq 0
        end
    end

    describe "#reading_time" do
        it "counts the time to read the contents" do
            diary_entry = DiaryEntry.new("title_1", "one two three four") 
            expect(diary_entry.reading_time(2)).to eq 2
        end

        it "returns a reading time of zero if no contents" do
            diary_entry = DiaryEntry.new("title_1", "") 
            expect(diary_entry.reading_time(2)).to eq 0
        end
    end

    describe "#reading_chunk" do
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
end