class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :author, :likes, :reviews
end
