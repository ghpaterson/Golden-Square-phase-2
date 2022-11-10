require 'track_tasks'

RSpec.describe "track_tasks method" do
    it "returns true if text includes #TODO" do
        result = track_tasks("#TODO")
        expect(result).to eq true
    end

    it "returns true if text includes #todo" do
    result = track_tasks("#todo")
    expect(result).to eq true
    end

    it "returns false if text does NOT inlcude #TODO" do
        result = track_tasks("this is a string")
        expect(result).to eq false
    end

    it "returns false if text is empty" do
        result = track_tasks(" ")
        expect(result).to eq false
    end

end