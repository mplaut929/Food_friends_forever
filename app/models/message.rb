class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation, class_name: "Friendship"

  def username
    self.user.username.capitalize
  end
end
