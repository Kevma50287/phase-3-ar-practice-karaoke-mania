class KaraokeSinger < ActiveRecord::Base
    has_many :joiners
    has_many :songs, through: :joiners

    def sing_song(song)
        Join.create(song_id: song.id, karaoke_singer_id: self.id)
    end

    def buy_drink
        self.update(number_of_drinks: self.number_of_drinks + 1)
    end

    def songs_by_artist
        self.songs.pluck(:artist_name).uniq
    end

    def drinks_tab(price_per_drink)
        self.number_of_drinks ( price_per_drink)
    end

    def self.total_tab(price_per_drink)
        self.sum(:number_of_drinks) * price_per_drink
    end

end
