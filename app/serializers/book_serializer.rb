class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :likes, :category_id, :image_url
  has_many :reviews
end
