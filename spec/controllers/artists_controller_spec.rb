require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "Routing" do
    it { should route(:get, '/artists').to(action: :index) }
    it { should route(:get, '/artists/1').to(action: :show, id: 1) }
    it { should route(:get, '/artists/1/edit').to(action: :edit, id: 1) }
    it { should route(:get, '/artists/new').to(action: :new) }
  end

  describe "Renders pages with success" do
    context "Index Artists" do
      it "shows http success" do
        visit artists_path
        expect(response).to have_http_status(:success)
      end
    end
    context "Show Artist" do
      let!(:artist) { create :artist }
      it "shows http success" do
        visit artist_path(artist)
        expect(response).to have_http_status(:success)
      end
    end
  end
end
