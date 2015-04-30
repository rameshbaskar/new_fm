require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'factory' do
    it 'can create a valid income category' do
      expect(FactoryGirl.build(:category)).to be_valid
    end

    it 'can create a valid expense category' do
      expect(FactoryGirl.build(:category, :expense)).to be_valid
    end
  end

  describe 'name' do
    it 'should error when null' do
      expect(FactoryGirl.build(:category, category_name: nil)).to_not be_valid
    end

    it 'should error when blank' do
      expect(FactoryGirl.build(:category, category_name: '')).to_not be_valid
    end

    it 'should error when empty space' do
      expect(FactoryGirl.build(:category, category_name: ' ')).to_not be_valid
    end
  end

  describe 'type' do
    it 'should error when null' do
      expect(FactoryGirl.build(:category, category_type: nil)).to_not be_valid
    end

    it 'should error when blank' do
      expect(FactoryGirl.build(:category, category_type: '')).to_not be_valid
    end

    it 'should error when empty space' do
      expect(FactoryGirl.build(:category, category_type: ' ')).to_not be_valid
    end
  end

  describe 'data' do
    it 'should be able to identify itself as income if that is the case' do
      cat = FactoryGirl.create(:category)
      expect(cat.income?).to be_truthy
      expect(cat.expense?).to be_falsey
    end

    it 'should be able to identify itself as expense if that is the case' do
      cat = FactoryGirl.create(:category, :expense)
      expect(cat.income?).to be_falsey
      expect(cat.expense?).to be_truthy
    end
  end
end
