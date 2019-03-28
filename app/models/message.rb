class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation, class_name: "Friendship"
  validates :message, presence: true

  def username
    self.user.username.capitalize
  end
end
