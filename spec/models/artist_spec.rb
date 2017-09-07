require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe "association with artist" do
    it { is_expected.to have_many :songs}
  
    let(:artist) {create :artist}
    let!(:song) {create :song, artist: artist}

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end

end
