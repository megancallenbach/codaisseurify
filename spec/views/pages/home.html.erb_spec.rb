require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :view do
  before { visit root_path }
  it "displays the welcome message" do
    expect(page).to have_text("Welcome to Codaisseurify")
  end
  it "displays list of artists header" do
    expect(page).to have_text("List of Artists")
  end
  it "displays list of songs header" do
    expect(page).to have_text("List of Songs")
  end
end
