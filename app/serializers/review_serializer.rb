class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :comment, :user
end
