require 'rails_helper'

feature 'Manage songs', js: true do
  let(:artist) {create :artist}
  let!(:song1) {create :song, name: "Song1", artist: artist}
  let!(:song2) {create :song, name: "Song2", artist: artist}

  scenario 'add a new song' do
    visit artist_path(artist)

    fill_in 'song-name', with: 'Batman'
    sleep(1)
    page.execute_script("$('#add-song').click()")
    sleep(1)
    expect(page).to have_content('Batman')
  end
  scenario 'delete all songs' do

    visit artist_path(artist)
    sleep(1)

    page.execute_script("$('.delete-all-songs').click()")
    sleep(2)
    expect(page).not_to have_content("Song1")
    expect(page).not_to have_content("Song2")

  end
end
