class Book < ApplicationRecord

	belongs_to :author, foreign_key: true, optional: true
  belongs_to :bookshop, foreign_key: true, optional: true
  belongs_to :publisher, foreign_key: true, optional: true
end
