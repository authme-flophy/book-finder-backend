class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :comment
  belongs_to :book, serializer: BookSerializer
end
