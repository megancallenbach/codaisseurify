require "rails_helper"

describe "Create a Song" do
  let!(:artist) {create :artist}

  it "successfully creates the song" do
    visit artist_path(artist)
    fill_in("song-name", :with => 'Hello World')
    click_on "Save"
    expect(page).to have_content("Hello World")
  end
end
