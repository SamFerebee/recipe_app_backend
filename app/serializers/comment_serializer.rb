class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :username
  belongs_to :user
  has_one :recipe
end
