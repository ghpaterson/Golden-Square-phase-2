require 'reading_time'

RSpec.describe "reading_time method" do
    it "returns the no. of seconds to read one word" do
        result = reading_time("hello")
        expect(result).to eq 0.3
    end

    it "returns the no. of seconds to read 2 words" do
        result = reading_time("one two one two one two one two one two")
        expect(result).to eq 3
    end

    it "returns 0 when reading no words" do
        result = reading_time(" ")
        expect(result).to eq 0
    end
end