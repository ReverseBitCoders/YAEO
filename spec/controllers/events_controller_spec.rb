require 'spec_helper'

describe EventsController do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 success code' do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it 'assigns @events on GET #index' do
      events = Event.all
      get :index
      assigns(:events).should eq(events)
    end
    it 'should render the index page on hitting index action' do
    get :index
      response.should render_template('index')
    end
  end
end
