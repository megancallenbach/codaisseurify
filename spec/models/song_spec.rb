require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "association with artist" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist}
    it "belongs to an artist" do
      expect(song.artist).to eq(artist)
    end
  end
end
