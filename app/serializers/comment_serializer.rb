class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :username
  has_one :user
  has_one :recipe

  def username
    self.object.user.username
  end

end
