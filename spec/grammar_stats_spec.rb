require 'grammar_stats'

RSpec.describe GrammarStats do
	context "checks to see if the given string has correct grammar" do
		it "returns true if string begins with a capiltal and ends in punctuation" do
				grammar_stats = GrammarStats.new
				expect(grammar_stats.check("Hello nice to see you.")).to eq true
		end

		it "returns false if the string does NOT start with a capital" do
				grammar_stats = GrammarStats.new
				expect(grammar_stats.check("hello there.")).to eq false
		end

		it "returns false if the string does NOT end with a punctuation" do
				grammar_stats = GrammarStats.new
				expect(grammar_stats.check("Hello how are you")).to eq false
		end
	end

	context "gives a percentage value of how many sentences have good grammar" do
		it "returns a percentage of 100 if ALL sentences have good grammar" do
			grammar_stats = GrammarStats.new
			grammar_stats.check("Hello.")
			expect(grammar_stats.percentage_good).to eq 100
		end

		it "returns a percentage of 50 if half of the sentences have good grammar" do
			grammar_stats = GrammarStats.new
			grammar_stats.check("Hello.")
			grammar_stats.check("hello")
			expect(grammar_stats.percentage_good).to eq 50
		end

		it "returns a percentage of 0 if No sentences have good grammar" do
			grammar_stats = GrammarStats.new
			grammar_stats.check("Hello")
			grammar_stats.check("hello.")
			expect(grammar_stats.percentage_good).to eq 0
		end
	end
end