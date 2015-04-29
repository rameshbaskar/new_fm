FactoryGirl.define do
  factory :transaction do
    user
    category
    currency
    description { Faker::Commerce.product_name }
    amount 100.00
    transaction_date { Date.current }
  end
end
