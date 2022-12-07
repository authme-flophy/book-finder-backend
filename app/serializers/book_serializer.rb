class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :likes, :reviews
end
