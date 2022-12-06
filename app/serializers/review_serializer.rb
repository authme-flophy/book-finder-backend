class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :comment
end