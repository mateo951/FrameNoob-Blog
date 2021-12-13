class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, :likes, foreign_key: 'post_id'

  def update_likes_counter(id, data)
  # A method that updates the posts counter for a user.
  self.find(id).update(likes_counter: data)
  end

  def recent_comments
  # A method which returns the 5 most recent comments for a given post.
  self.order(created_at: :asc).limit(5)
  end
end
