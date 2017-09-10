require 'rails_helper'

describe "New Artist Page" do
  before { visit new_artist_path }

  it "shows upload image option" do
    expect(page).to have_text("Upload Image")
  end
end
