class ArtistInstrumentsController < ApplicationController

    def new
        @artist_instrument = ArtistInstrument.new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create
        @artist_instrument = ArtistInstrument.create(params.require(:artist_instrument).permit(:artist_id, :instrument_id))
        if @artist_instrument.valid?
            redirect_to artist_path(params[:artist_instrument][:artist_id])
        else
            flash[:errors] = @artist_instrument.errors.full_messages
            redirect_to new_artist_instrument_path
        end
    end

end