class Category < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :category_name, :category_type

  def income?
    category_type == 'income'
  end

  def expense?
    category_type == 'expense'
  end
end
