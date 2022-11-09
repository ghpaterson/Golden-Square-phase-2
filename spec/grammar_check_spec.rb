require 'grammar_check'

RSpec.describe "grammar_check method" do
    it "returns true if given string is capitalised and ends in punctuation" do
        results = grammar_check("Hello!")
        expect(results).to eq true
    end

    it "returns false if given string has NO punctuation" do
        results = grammar_check("Hello")
        expect(results).to eq false
    end

    it "returns false if given string is NOT capitalised" do
        results = grammar_check("hello!")
        expect(results).to eq false
    end

end