class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :book_categories

    validates :title, presence: true
    validates :author, uniqueness: true
end
