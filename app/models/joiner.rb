class Joiner < ActiveRecord::Base
    belongs_to :karaoke_singer
    belongs_to :song
end