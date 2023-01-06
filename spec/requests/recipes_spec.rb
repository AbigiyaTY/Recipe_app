require 'rails_helper'

RSpec.describe 'Public Recipes', type: :request do
  describe 'recipes#public' do
    before(:example) { get '/recipes/index' }

    it 'returns correct response status' do
      expect(response).to have_http_status(302)
    end
  end
end
