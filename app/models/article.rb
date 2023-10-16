class Article < ApplicationRecord
  belongs_to :language
  belongs_to :topic
  has_many :favorites

  validates :title, presence: true
  validates :content, presence: true
  validates :source, presence: true
end
