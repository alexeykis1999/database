class Publisher < ApplicationRecord

	has_many :books, foreign_key: true
	has_many :bookshops, foreign_key: true
end
