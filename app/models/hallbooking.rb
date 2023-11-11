class Hallbooking < ApplicationRecord
    validates :hall_id, presence: true
    validates :admin_id, presence: true
    validates :date_, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :is_approved, presence: true
    validates :reason, presence: true
end
