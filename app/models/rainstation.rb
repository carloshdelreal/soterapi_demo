class Rainstation < ApplicationRecord
  validates :code, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
