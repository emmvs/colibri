class Topic < ApplicationRecord
  has_many :preferences
  has_many :articles
end
