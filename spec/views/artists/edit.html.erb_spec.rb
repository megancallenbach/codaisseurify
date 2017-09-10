require 'rails_helper'

describe "Artist Edit Page" do
  let!(:artist) { create :artist}
  before { visit edit_artist_path(artist) }

  it "shows upload image option" do
    expect(page).to have_text("Upload Image")
  end
end
