class Preference < ApplicationRecord
  belongs_to :user
  belongs_to :language
  belongs_to :topic
end
