class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id", dependent: :destroy
  has_many :users, through: :inverse_friendships

  has_many :user_restrictions, dependent: :destroy
  has_many :restrictions, through: :user_restrictions

  validates :username, uniqueness: true
  validates :first_name, :username, :city, :age, presence: true
  before_save {username.downcase!}

  has_secure_password

  #Return all users who are connected to the given user via a accepted friendship or accepted inverse friendship.
  def friends
    friends_array = friendships.map{|friendship| friendship.friend if friendship.accepted }
    new_friends_array = friends_array + inverse_friendships.map{|friendship| friendship.user if friendship.accepted }
    new_friends_array.compact
  end

  #finds friend requests that others have sent this user
  def all_incoming_friend_requests
    inverse_friendships.map{ |friendship| friendship.user }
  end

  def incoming_requests(id)
    all_incoming_friend_requests.find do |friend|
          friend.id == id
      end
    end

  #finds friend requests that user has sent others
  def all_outgoing_friend_requests
    friendships.map{ |friendship| friendship.friend}
  end

  def outgoing_requests(id)
    all_outgoing_friend_requests.find do |friend|
        friend.id == id
      end
    end

  def outgoing_pending?(id)
    user = outgoing_requests(id)
    self.friends.include?(user)
  end

  def incoming_pending?(id)
    user = incoming_requests(id)
    self.friends.include?(user)
  end

  def num_pending_requests
      if inverse_friendships
        inverse_friendships.select{|friendship| !friendship.accepted }.length
      else
        "0"
      end
  end

end
