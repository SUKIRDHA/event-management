class Party < ApplicationRecord
    has_many :guests
  validates :party_name, presence: true
  validates :date_time, presence: true
end
