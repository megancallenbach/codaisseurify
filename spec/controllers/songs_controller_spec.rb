require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  describe "Routing" do
    it { should route(:get, '/songs').to(action: :index) }
    it { should route(:get, '/artists/1/songs/1/edit').to(action: :edit, artist_id: 1, id: 1) }
    it { should route(:get, '/artists/1/songs/new').to(action: :new, artist_id: 1) }

  end
end
