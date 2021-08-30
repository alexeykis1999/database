class Books < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.string :bookshop

      t.timestamps
    end
    add_index :books, :name, unique: true
    change_column_null :books, :name, false
  end
end
