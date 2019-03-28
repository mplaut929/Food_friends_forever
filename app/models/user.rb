class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id", dependent: :destroy
  has_many :users, through: :inverse_friendships

  has_many :user_restrictions, dependent: :destroy
  has_many :restrictions, through: :user_restrictions

  belongs_to :fav_cuisine
  belongs_to :eating_location
  belongs_to :meal
  belongs_to :shopping
  belongs_to :avatar

  has_many :messages, dependent: :destroy
  has_many :converations, through: :messages

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


  def self.percentage_match(user1, user2)
    count = 0
    if user1.age == user2.age
      count += 1
    end
    if user1.city == user2.city
      count +=1
    end
    if !(user1.restrictions & user2.restrictions).empty?
      count +=1
    end
    if user1.fav_cuisine == user2.fav_cuisine
      count +=1
    end
    if user1.eating_location == user2.eating_location
      count +=1
    end
    if user1.meal == user2.meal
      count +=1
    end
    if user1.shopping == user2.shopping
      count +=1
    end
    if user1.avatar == user2.avatar
      count +=1
    end
    if count > 0
      return ((count.to_f/8) * 100).to_i
    else
      return 0
    end

  end

  def self.meal_count
    meal_hash = {}
    User.all.each do |user|
      meal_hash[user.meal.name] ||= 0
        meal_hash[user.meal.name] += 1
    end
    meal_hash
  end

  def self.shopping_count
    shopping_hash = {}
    User.all.each do |user|
      shopping_hash[user.shopping.name] ||= 0
        shopping_hash[user.shopping.name] += 1
    end
    shopping_hash
  end

  def self.fav_cuisine_count
    fav_cuisine_hash = {}
    User.all.each do |user|
      fav_cuisine_hash[user.fav_cuisine.name] ||= 0
        fav_cuisine_hash[user.fav_cuisine.name] += 1
    end
    fav_cuisine_hash
  end

  def self.eating_location_count
    eating_location_hash = {}
    User.all.each do |user|
      eating_location_hash[user.eating_location.name] ||= 0
        eating_location_hash[user.eating_location.name] += 1
    end
    eating_location_hash
  end

  def self.avatar_count
    avatar_hash = {}
    User.all.each do |user|
      avatar_hash[user.avatar.name] ||= 0
        avatar_hash[user.avatar.name] += 1
    end
    avatar_hash
  end

  def avatar_pic
    self.avatar.name
  end


  def self.sorted_users(sort, user2)

    if sort == "Percentage Match"
      sorted_users = {}
      User.all.each do |user|
        percent = User.percentage_match(user, user2)
        sorted_users[user] ||= percent
      end
      sorted_users.sort_by {|key, val| val}
      sorted_users.keys
    elsif sort == "Age"
      User.order(age: :desc)
    elsif sort == "City"
      User.order(city: :desc)
    else
      User.all
    end
  end



end
