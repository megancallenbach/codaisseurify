require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:length) }
    it { is_expected.to validate_presence_of(:genre) }
  end

  describe "association with artist" do
  let(:artist) { create :artist }

    it "belongs to an artist" do
      song = artist.songs.build(name: "Breakaway")

      expect(song.artist).to eq(artist)
    end
  end

  
end
