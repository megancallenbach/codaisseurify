require 'rails_helper'

describe "Visitor sees the list of artists" do
  let(:artist) { create :artist}
  let!(:song) { create :song, genre: "pop", artist: artist}

  it "shows artist name" do
    visit artists_path
    expect(page).to have_text(artist.name)
  end

end
