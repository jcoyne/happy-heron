# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Dashboard requests' do
  let(:user) { create(:user) }

  before { sign_out }

  context 'when user has no deposits' do
    before { sign_in user }

    it 'returns an unauthorized http status code' do
      get '/dashboard'
      expect(response).to redirect_to(:root)
      follow_redirect!
      expect(response).to be_successful
      expect(response.body).to include 'You are not authorized to perform the requested action'
    end
  end

  context 'when user has deposits' do
    before do
      sign_in user
      create(:work, depositor: user, title: 'Happy little title')
      create(:work, title: 'Secret')
    end

    it 'shows the deposits that belong to the user' do
      get '/dashboard'
      expect(response).to be_successful
      expect(response.body).to include 'Happy little title'
      expect(response.body).not_to include 'Secret'
    end
  end

  context 'when user is a collection creator' do
    before { sign_in user, groups: ['dlss:hydrus-app-collection-creators'] }

    it 'shows links to create in a collection' do
      get '/dashboard'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include 'Your collections'
      expect(response.body).to include '+ Create a new collection'
    end
  end

  context 'when user is an application admin' do
    before { sign_in user, groups: ['dlss:hydrus-app-administrators'] }

    it 'shows the dashboard' do
      get '/dashboard'
      expect(response).to have_http_status(:ok)
    end

    it 'shows a link to create collections' do
      get '/dashboard'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include 'Your collections'
      expect(response.body).to include '+ Create a new collection'
    end
  end
end
