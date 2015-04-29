class Category < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :category_name, :category_type
end
