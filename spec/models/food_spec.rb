require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    @user = User.new(name: 'elie', email: 'elie@gmail.com', password: 'qwertyuio', password_confirmation: 'qwertyuio')
    @user.skip_confirmation!
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      food = Food.new(name: 'Apples', measurement_unit: 'pieces', price: 18, quantity: 24, user_id: @user.id)
      expect(food).to_not be_valid
    end

    it 'is not valid without a name' do
      food = Food.new(name: nil, measurement_unit: 'pieces', price: 18, quantity: 24, user_id: @user.id)
      expect(food).to_not be_valid
    end

    it 'is not valid without mesurement_unit' do
      food = Food.new(name: 'Apples', measurement_unit: nil, price: 18, quantity: 24, user_id: @user.id)
      expect(food).to_not be_valid
    end

    it 'is not valid without price' do
      food = Food.new(name: 'Apples', measurement_unit: 'pieces', price: nil, quantity: 24, user_id: @user.id)
      expect(food).to_not be_valid
    end

    it 'is not valid without quantity' do
      food = Food.new(name: 'Apples', measurement_unit: 'pieces', price: 18, quantity: nil, user_id: @user.id)
      expect(food).to_not be_valid
    end

    it 'is not valid without user id' do
      food = Food.new(name: 'Apples', measurement_unit: 'pieces', price: 18, quantity: 24, user_id: nil)
      expect(food).to_not be_valid
    end
  end
end
