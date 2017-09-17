require 'rails_helper'

describe "Artist Show Page" do
  let(:artist) { create :artist}
  let!(:song) { create :song, artist: artist }
  before { visit artist_path(artist) }

  it "shows artist facts" do
  expect(page).to have_text(artist.name)
  expect(page).to have_text(artist.genre)
  end

  it "shows artist song facts" do
  expect(page).to have_text(artist.songs.name)
  end
end
