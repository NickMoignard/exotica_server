class DancersTimeSlot < ApplicationRecord
  belongs_to :dancer
  belongs_to :time_slot
end
