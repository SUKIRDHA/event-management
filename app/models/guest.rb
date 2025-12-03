class Guest < ApplicationRecord
  belongs_to :party
    validates :name, presence: true
    validates :email, presence: true
    validates :phone_no, presence: true ,length: { minimum: 10 }
end
