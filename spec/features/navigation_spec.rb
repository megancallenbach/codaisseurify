require 'rails_helper'

describe "Navigation Links" do

# NAVIGATION BAR
  describe "Navbar" do
    before { visit root_path }

    it "links to artists page" do
      click_link "Artists"
      expect(current_path).to eq(artists_path)
    end

    it "links to songs page" do
      click_link "Songs"
      expect(current_path).to eq(artist_songs_path(:artist_id))
    end
  end

# ARTIST PAGE LINKS
  describe "Artists Page" do

    it "links to New Artist Page" do
      visit artists_path
      click_link "Create New Artist"
      expect(current_path).to eq(new_artist_path)
    end
  end

  # SONGS PAGE LINKS
  describe "Songs Page" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }
    before { visit artist_songs_path(:artist_id)}
    it "links to edit song page" do
      click_link "Edit"
      expect(current_path).to eq(edit_artist_song_path(artist, song))
    end
    it "links to delete song" do
      click_link "Delete"
      expect(current_path).to eq(artist_songs_path(artist))
    end
  end
end
