class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :likes, :category_id, :url
  has_many :reviews
end
