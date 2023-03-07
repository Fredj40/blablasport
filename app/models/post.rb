class Post < ApplicationRecord
  validates :title, presence: true

  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

  def to_s
    title
  end
end
