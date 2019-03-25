class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  validates :user_id, uniqueness: { scope: :friend_id}


  def accept
    self.update accepted: true
  end

  def self.add_friend(user_id, friend_id)
    Friendship.create(user_id: user_id, friend_id: friend_id)
  end


end
