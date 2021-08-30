class Publisher < ApplicationRecord
	has_one :books, foreign_key: true
	has_many :bookshops, foreign_key: true
end
