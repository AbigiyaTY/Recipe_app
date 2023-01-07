require 'rails_helper'

RSpec.describe 'Recipe', type: :system do
  user = User.create(name: 'JJ', email: 'JJ@gmail.com', password: '123456')

  subject do
    Recipe.new(name: 'Apple', description: 'Apple with cream', user_id: user.id)
  end
  before { subject.save }

  describe 'index page' do
    it 'I can see the button' do
      visit recipes_path
      page.has_button?('Add Recipe')
    end
    it 'I can see the recipe name' do
      visit recipes_path
      page.has_content?('Apple')
    end
    it 'I can see the recipe description' do
      visit recipes_path
      page.has_content?('Apple with cream')
    end
  end
end
