class Raindata < ApplicationRecord
  belongs_to :rainstation
  validates :rainstation_id, presence: true
  validates :rain, presence: true
end
