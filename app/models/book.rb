class Book < ApplicationRecord

	has_many :authors, foreign_key: true
  has_many :bookshops, foreign_key: true
  belongs_to :publisher, foreign_key: true, optional: true
end
