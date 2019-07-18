# frozen_string_literal: true

require "rails_helper"

RSpec.describe IndexController, type: :controller do

  describe "GET #index" do
    it "returns http redirect before sign in" do
      get :index
      expect(response).to have_http_status(:redirect)
    end

    it "returns http success" do
      sign_in create(:user)
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
