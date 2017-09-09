require 'rails_helper'

describe "Visitor sees the list of artists" do

  let!(:artist1) { create :artist, name: "Mandy" }
  let!(:artist2) { create :artist, name: "Bob" }

  it "shows all artists" do
    visit artists_path

    expect(page).to have_text("Mandy")
    expect(page).to have_text("Bob")
  end

end
