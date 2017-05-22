class Guess < ApplicationRecord
  belongs_to :episode
  has_one :couple
end
