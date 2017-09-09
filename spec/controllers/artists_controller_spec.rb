require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "Routing" do
    it { should route(:get, '/artists').to(action: :index) }
    it { should route(:get, '/artists/1').to(action: :show, id: 1) }
  end
  
end
