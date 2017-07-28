require 'rails_helper'

RSpec.describe ResumeController, type: :controller do

  describe "GET #json" do
    it "returns http success" do
      get :json
      expect(response).to have_http_status(:success)
    end
  end

end
