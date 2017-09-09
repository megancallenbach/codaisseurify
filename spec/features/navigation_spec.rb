# Checks the Navigation between pages

require 'rails_helper'

describe "Navigation" do
  it "visitor can navigate to artists page from homepage" do
    visit root_path

    click_link "Artists"

    expect(current_path).to eq(artists_path)
  end
  it "visitor can navigate to songs page from homepage" do
    visit root_path

    click_link "Songs"

    expect(current_path). to eq(artist_songs_path(:artist_id))
  end
end
