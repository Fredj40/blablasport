class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :sports, through: :favorite_sports, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :chatrooms, through: :events, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :sports, through: :events, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships, class_name: "User", dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :sex, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :phone_number, length: { minimum: 10 }
  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :zip_code, length: { minimum: 4 }

  include PublicActivity::Model
  tracked

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_friend(friend)
    friendships.create(friend_id: friend.id)
  end

  def accept_friend_request_from(other_user)
    friendship = Friendship.find_by(user_id: other_user.id, friend_id: self.id)
    friendship.update(accepted: true)
  end

  def remove_friend(friend)
    friendships.find_by(friend_id: friend.id).destroy
  end

  def average_rating
    ratings = []
    events.each do |event|
      event.reviews.each do |review|
        ratings << review.rating
      end
    end
    ratings = ratings.compact
    if ratings.empty?
      "Pas de note"
    else
      (ratings.sum / ratings.size)
    end
  end

  def number_of_events
    events.count
  end

end
