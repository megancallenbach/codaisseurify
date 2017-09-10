require 'rails_helper'

describe "Create New Song for Artist" do
  let(:artist) { create :artist }
  before { visit new_artist_song_path(artist) }

  it "shows correct artist name" do
    expect(page).to have_text(artist.name)
  end
end
