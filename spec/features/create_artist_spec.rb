require "rails_helper"

describe "Create an Artist" do
  before do
    visit new_artist_path
    fill_in("artist_name", :with => 'Miley')
    fill_in("artist_genre", :with => 'Pop')
  end
  it "adds the artist to database" do
    click_on "Save"
    expect(page).to have_content "Artist Created Successfully"
  end
end
