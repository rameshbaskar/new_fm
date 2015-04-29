class RenameColumnsInCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :name, :category_name
    rename_column :categories, :type, :category_type
  end
end
