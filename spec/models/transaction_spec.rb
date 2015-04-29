require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'factory' do
    it 'can create a valid transaction' do
      expect(FactoryGirl.build(:transaction)).to be_valid
    end
  end

  describe 'description validations' do
    it 'should error when null' do
      expect(FactoryGirl.build(:transaction, description: nil)).to_not be_valid
    end

    it 'should error when blank' do
      expect(FactoryGirl.build(:transaction, description: '')).to_not be_valid
    end

    it 'should error when empty' do
      expect(FactoryGirl.build(:transaction, description: ' ')).to_not be_valid
    end
  end

  describe 'transaction_date validations' do
    it 'should error when null' do
      expect(FactoryGirl.build(:transaction, transaction_date: nil)).to_not be_valid
    end
  end

  describe 'amount validations' do
    it 'should error when null' do
      expect(FactoryGirl.build(:transaction, amount: nil)).to_not be_valid
    end
  end
end
