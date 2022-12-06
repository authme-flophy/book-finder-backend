class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :book_category

    validates :title, presence: true
    validates :author, uniqueness: true
end
