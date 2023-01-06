require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'elie', email: 'elie@gmail.com', password: 'qwertyuio', password_confirmation: 'qwertyuio')
  end

  context 'validations' do

    it 'is not valid without a name' do
      @user.name = nil
      @user.save
      @user.skip_confirmation!
      expect(@user).to_not be_valid
    end

    it 'is not valid without email' do
      @user.email = nil
      @user.save
      @user.skip_confirmation!
      expect(@user).to_not be_valid
    end

    it 'is not valid without password' do
      @user.password = nil
      @user.save
      @user.skip_confirmation!
      expect(@user).to_not be_valid
    end
  end

end