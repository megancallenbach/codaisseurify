require 'rails_helper'

describe "Artist Show Page" do
  let(:artist) { create :artist, name: "Mandy" }
  let!(:song) { create :song, artist: artist}

  it "shows artist name" do
  visit artist_path(artist)

  expect(page).to have_text(artist.name)
  expect(page).to have_text(artist.genre)
  expect(page).to have_text(artist.songs.name)

  end

end
