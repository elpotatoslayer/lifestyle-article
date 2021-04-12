class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  scope :order_by_most_recent, -> { order(updated_at: :desc) }

  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
end
