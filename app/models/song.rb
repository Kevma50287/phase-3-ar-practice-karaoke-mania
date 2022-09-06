class Song < ActiveRecord::Base
    has_many :joiners
    has_many :karaoke_singers, through: :joiners

    def self.find_by_artist(artist_name)
        self.where(artist_name: artist_name)  
    end

    def number_of_times_sung
        self.joiners.count
    end
end
