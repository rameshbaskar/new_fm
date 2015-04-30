class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :categories
  has_many :transactions

  validates_presence_of :full_name, :email

  def incomes
    transactions.select { |t| t.income? }
  end

  def expenses
    transactions.select { |t| t.expense? }
  end
end
