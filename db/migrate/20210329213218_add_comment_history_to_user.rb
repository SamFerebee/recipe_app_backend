class AddCommentHistoryToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :comment_history, :jsonb
  end
end
