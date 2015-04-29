require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'can create a valid user' do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    it 'can create a valid admin' do
      expect(FactoryGirl.build(:user, :admin)).to be_valid
    end
  end

  describe 'full_name validations' do
    it 'should error when null' do
      expect(FactoryGirl.build(:user, full_name: nil)).to_not be_valid
    end

    it 'should error when blank' do
      expect(FactoryGirl.build(:user, full_name: '')).to_not be_valid
    end

    it 'should error when empty space' do
      expect(FactoryGirl.build(:user, full_name: ' ')).to_not be_valid
    end
  end

  describe 'email validations' do
    it 'should error when null' do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end

    it 'should error when blank' do
      expect(FactoryGirl.build(:user, email: '')).to_not be_valid
    end

    it 'should error when empty space' do
      expect(FactoryGirl.build(:user, email: ' ')).to_not be_valid
    end
  end
end
