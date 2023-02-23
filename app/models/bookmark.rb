class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie, scope: :list
  validates :comment, length: { minimum: 6, too_short: "%{count} characters is under the minimum allowed" }
end
