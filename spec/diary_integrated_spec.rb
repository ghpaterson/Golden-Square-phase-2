require 'diary'
require 'diaryentry'

RSpec.describe "integration" do
    context "after adding diary entries" do
        it "lists diary entries" do
            diary = Diary.new
            diary_entry = DiaryEntry.new("title_1", "contents_1")
            diary.add(diary_entry)
            expect(diary.all).to eq [diary_entry]
        end
    end

    describe "#count_words" do
        context "counting all the words from all the diary entries" do
            it "counts all the diary entries" do
                diary = Diary.new
                diary_entry1 = DiaryEntry.new("title_1", "contents_1")
                diary_entry2 = DiaryEntry.new("title_2", "contents_2")
                diary.add(diary_entry1)
                diary.add(diary_entry2)
                expect(diary.count_words).to eq 2
            end
        end
    end
    describe "#reading_time" do
        it "returns the total reading time for all diary entries" do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new("title_1", "one two three four")
            diary_entry2 = DiaryEntry.new("title_2", "five six seven eight")
            diary.add(diary_entry1)
            diary.add(diary_entry2)
            expect(diary.reading_time(2)).to eq 4
        end
    end

    describe "#find_best_entry_for_reading_time" do
        it "returns the most appropriate diary entry based on reading time" do
            diary = Diary.new
            best_entry = DiaryEntry.new("title_2", "one two")
            diary_entry1 = DiaryEntry.new("title_1", "one")
            diary_entry3 = DiaryEntry.new("title_3", "one two three")
            diary.add(diary_entry1)
            diary.add(best_entry)
            diary.add(diary_entry3)
            expect(diary.find_best_entry_for_reading_time(2, 1)).to eq best_entry
        end
    end
end