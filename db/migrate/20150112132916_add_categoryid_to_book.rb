class AddCategoryidToBook < ActiveRecord::Migration
  def change
    add_column :books, :categoryid, :integer
  end
end
