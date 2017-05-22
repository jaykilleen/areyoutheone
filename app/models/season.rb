class Season < ApplicationRecord
  belongs_to :user
  has_many :episodes
end
