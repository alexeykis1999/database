class BookUnique < ActiveRecord::Migration[5.2]
	def change
    add_index :books, :name, unique: true
    add_index :books, :author, unique: true
    change_column_null :books, :name, false
    change_column_null :books, :author, false
    change_column_null :books, :publisher, false
    change_column_null :books, :bookshop, false
  end
end

