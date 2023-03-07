class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:first_name, :last_name]

  include PublicActivity::Model
  tracked only: :update

end
