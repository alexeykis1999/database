class Bookshop < ApplicationRecord
	has_many :books, foreign_key: true
	has_many :publishers, foreign_key: true
end
