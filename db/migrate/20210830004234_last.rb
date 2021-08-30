class Last < ActiveRecord::Migration[5.2]
  def change
  	add_index :books, :name, unique: false
  	change_column_null :books, :name, false
  	change_column_null :books, :author_id, false
    change_column_null :books, :publisher_id, false
    change_column_null :books, :bookshop_id, false
  	add_index :authors, :name, unique: true
  	change_column_null :authors, :name, false
  	add_index :publishers, :name, unique: true
  	change_column_null :publishers, :name, false
  	add_index :bookshops, :name, unique: true
  	change_column_null :bookshops, :name, false

  end
end
