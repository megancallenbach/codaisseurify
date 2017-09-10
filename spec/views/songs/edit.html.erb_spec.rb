describe "Create New Song for Artist" do
  let(:artist) { create :artist }
  let(:song) { create :song, artist: artist }
  before { visit edit_artist_song_path(artist, song) }

  it "shows correct artist name" do
    expect(page).to have_text(artist.name)
  end
end
