require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    @user = User.new(name: 'elie', email: 'elie@gmail.com', password: 'qwertyuio', password_confirmation: 'qwertyuio')
    @user.skip_confirmation!
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      recipe = Recipe.new(name: 'Apples', preparation_time: '1 hour', cooking_time: '30 minutes',
                          description: 'Lorem ipsum', public: false, user_id: @user.id)
    end

    it 'is not valid without a name' do
      recipe = Recipe.new(name: nil, preparation_time: '1 hour', cooking_time: '30 minutes',
                          description: 'Lorem ipsum', public: false, user_id: @user.id)
      expect(recipe).to_not be_valid
    end

    it 'is not valid without a preparation_time' do
      recipe = Recipe.new(name: 'Apples', preparation_time: nil, cooking_time: '30 minutes',
                          description: 'Lorem ipsum', public: false, user_id: @user.id)
      expect(recipe).to_not be_valid
    end

    it 'is not valid without a cooking_time' do
      recipe = Recipe.new(name: 'Apples', preparation_time: '1 hour', cooking_time: nil, description: 'Lorem ipsum',
                          public: false, user_id: @user.id)
      expect(recipe).to_not be_valid
    end

    it 'is not valid without a description' do
      recipe = Recipe.new(name: 'Apples', preparation_time: '1 hour', cooking_time: '30 minutes', description: nil,
                          public: false, user_id: @user.id)
      expect(recipe).to_not be_valid
    end
  end
end
