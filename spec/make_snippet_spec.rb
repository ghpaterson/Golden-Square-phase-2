require 'make_snippet'

RSpec.describe "make_snippet method" do
    it "returns an empty string" do
        expect(make_snippet("")).to eq ""
    end

    it "returns a string equal or less than five words" do
        expect(make_snippet("hello world")).to eq "hello world"
    end
    
    it "returns a cut-off string if greater than 5 words" do
        expect(make_snippet("hello world how are you today")).to eq "hello world how are you..."
    end 
end