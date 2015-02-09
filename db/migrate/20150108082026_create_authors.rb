class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nationality
      t.string :birthday

      t.timestamps null: false
    end
  end
end
