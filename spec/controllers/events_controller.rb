require 'spec_helper'

describe EventsController do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 success code' do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end
