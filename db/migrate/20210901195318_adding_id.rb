class AddingId < ActiveRecord::Migration[5.2]
  def change
      change_table :books do |t|
      t.remove :author
      t.remove :publisher
      t.remove :bookshop
  
      t.change :author_id, :integer
      t.change :publisher_id, :integer
      t.change :bookshop_id, :integer
		end
  end
end
