class AddBorrowStatusToBooks < ActiveRecord::Migration
  def change
    add_column :books, :borrow_status, :boolean, :default => false
  end
end
