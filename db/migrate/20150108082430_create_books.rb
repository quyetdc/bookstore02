class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.string :versions

      t.timestamps null: false
    end
  end
end
