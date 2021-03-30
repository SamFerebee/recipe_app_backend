class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  def username
    self.user.username
  end

end
