class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :currency

  validates_presence_of :description, :transaction_date, :amount
end
