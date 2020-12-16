class ArtistInstrument < ApplicationRecord

    belongs_to :artist
    belongs_to :instrument

    validates :instrument_id, uniqueness: {scope: :artist_id,
    message: "Artist already plays that instrument"}

end