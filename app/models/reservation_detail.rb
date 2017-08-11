class ReservationDetail < ApplicationRecord
    belongs_to :user
    validates_presence_of :title, :body
end
