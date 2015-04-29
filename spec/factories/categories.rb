FactoryGirl.define do
  factory :category do
    user
    category_name { Faker::Commerce.product_name }
    category_type 'income'
  end

  trait :expense do
    category_type 'expense'
  end
end
