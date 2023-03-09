class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  followability

  has_many :bookings, dependent: :destroy
  has_many :sports, through: :favorite_sports, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :chatrooms, through: :events, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :sports, through: :events, dependent: :destroy
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

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
  validates :city, presence: true

  include PublicActivity::Model
  tracked owner: :itself

  def full_name
    "#{first_name} #{last_name}"
  end

  def unfollow(user)
    followerable_relationships.where(followable_id: user.id).destroy_all
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
