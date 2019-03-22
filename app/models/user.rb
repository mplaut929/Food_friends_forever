class User < ApplicationRecord
  has_many :friendships
  has_many :friends, -> { where(status: "accepted") }, through: :friendships
end
