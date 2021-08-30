class CreateBook1s < ActiveRecord::Migration[5.2]
  def change
    create_table :book1s do |t|
      t.string :name

      t.timestamps
    end
    add_index :book1s, :name, unique: true
    change_column_null :book1s, :name, false
  end
end
