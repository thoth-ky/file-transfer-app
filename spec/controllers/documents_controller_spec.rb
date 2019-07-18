# frozen_string_literal: true

require "rails_helper"

RSpec.describe DocumentsController, type: :controller do
  before(:each) do
    sign_in create(:user)
    get :index
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      document = create(:document)
      get :show, params: { id: document.id.to_s }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    xit "returns http success" do

    end
  end
end
