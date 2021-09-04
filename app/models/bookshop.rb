class Bookshop < ApplicationRecord
	scope :find_book , ->(name) { where(id: Book.where("name = ?", name).pluck(:bookshop_id)).pluck(:name)}
	has_many :books, foreign_key: true
	has_many :publishers, foreign_key: true
end
