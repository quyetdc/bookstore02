class AddCategoryIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :category_id, :string
    add_column :books, :integer, :string
  end
end
