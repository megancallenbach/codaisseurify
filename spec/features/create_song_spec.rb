require "rails_helper"

describe "Create a Song" do
  let!(:artist) {create :artist}

  it "successfully creates the song" do
    visit new_artist_song_path(artist.id)
    fill_in("song_name", :with => 'Hello World')
    click_on "Save"
    expect(page).to have_content "Song Created Successfully"
  end
end
