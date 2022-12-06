class User < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    # validates :username, presence: true
    # validates :username, uniqueness: true
end
