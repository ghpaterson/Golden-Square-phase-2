require 'music_library'

RSpec.describe MusicLibrary do
    context "given no music tracks" do
        it "gives an empty list" do
            music_library = MusicLibrary.new
            expect(music_library.list).to eq []
        end
    end

    context "given one music track" do
        it "lists the music track" do
            music_library = MusicLibrary.new
            music_library.add("track1")
            expect(music_library.list).to eq ["track1"]
        end
    end

    context "given two music tracks" do
        it "lists the two music tracks" do
            music_library = MusicLibrary.new
            music_library.add("track1")
            music_library.add("track2")
            expect(music_library.list).to eq ["track1", "track2"]
        end
    end
end