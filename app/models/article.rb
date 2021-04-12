class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
end
