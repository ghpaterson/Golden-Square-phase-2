require 'count_words'

RSpec.describe "count_words method" do
   it "returns a count of 1 if string is one word" do
        result = count_words("one")
        expect(result).to eq 1
    end

    it "returns a count of 5 if string is 5 words" do
        result = count_words("one two three four five")
        expect(result).to eq 5
    end
end