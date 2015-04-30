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

  describe 'data' do
    let(:user) { FactoryGirl.create(:user) }
    let(:income_cat) { FactoryGirl.create(:category, user: user) }
    let(:expense_cat) { FactoryGirl.create(:category, :expense, user: user) }
    let(:currency) { FactoryGirl.create(:currency) }

    it 'should be able to identify the category as income if that is the case' do
      transaction = FactoryGirl.create(:transaction, user: user, category: income_cat, currency: currency)
      expect(transaction.income?).to be_truthy
      expect(transaction.expense?).to be_falsey
    end

    it 'should be able to identify the category as expense if that is the case' do
      transaction = FactoryGirl.create(:transaction, user: user, category: expense_cat, currency: currency)
      expect(transaction.income?).to be_falsey
      expect(transaction.expense?).to be_truthy
    end
  end
end
