class MusicLibrary

    def initialize
        @music_list = []
    end

    def add(track)
        @music_list << track
    end

    def list
        return @music_list
    end
end