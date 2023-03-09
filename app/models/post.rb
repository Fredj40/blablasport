class Post < ApplicationRecord
  validates :title, presence: true

  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

  include PublicActivity::Model
  tracked

  def to_s
    title
  end
end
