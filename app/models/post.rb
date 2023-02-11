class Post < ApplicationRecord
  validates :title, presence: true

  include PublicActivity::Model
  tracked

  def to_s
    title
  end
end
