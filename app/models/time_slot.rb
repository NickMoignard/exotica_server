class TimeSlot < ApplicationRecord
    has_and_belongs_to_many :dancers
end