class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.belongs_to :author, foreign_key: true
      t.belongs_to :bookshop, foreign_key: true
      t.belongs_to :publisher, foreign_key: true
			t.string :name
      t.timestamps
    end
  end
end
