class AddImagesToBook < ActiveRecord::Migration
  def change
    add_column :books, :images, :string
    add_column :books, :string, :string
  end
end
