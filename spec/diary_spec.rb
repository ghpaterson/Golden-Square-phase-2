require 'diary'

RSpec.describe Diary do
    context "initially" do
        it "has a list of empty entries" do
            diary = Diary.new
            expect(diary.all).to eq []
        end
    end
end