require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #landing" do
    it "returns http success" do
      get :landing
      response.should  have_http_status(:success)
    end

    it "renders :landing when no user is logged in" do

      get :landing
      should render_template('landing')
    end

    it "renders :home when a user is logged in" do
      dog = FactoryBot.create(:dog)
      sign_in dog

      get :landing
      should render_template('home')
    end
  end

end
