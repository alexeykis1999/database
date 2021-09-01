class Publisher < ApplicationRecord
	scope :find_book , ->(name) { where(id: Book.where("name = ?", name).pluck(:publisher_id)).pluck(:name)}
	has_many :books, foreign_key: true
	has_many :bookshops, foreign_key: true
end
