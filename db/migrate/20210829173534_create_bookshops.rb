class CreateBookshops < ActiveRecord::Migration[5.2]
  def change
    create_table :bookshops do |t|
			t.string :name
      t.timestamps
    end
  end
