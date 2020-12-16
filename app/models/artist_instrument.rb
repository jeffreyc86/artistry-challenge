class ArtistInstrument < ApplicationRecord

    belongs_to :artist
    belongs_to :instrument

    validates :artist_id, uniqueness: {scope: :instrument_id,
    message: "already plays that instrument"}


end