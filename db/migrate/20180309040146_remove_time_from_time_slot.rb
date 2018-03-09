class RemoveTimeFromTimeSlot < ActiveRecord::Migration[5.1]
  def change
    remove_column :time_slots, :time, :datetime
  end
end
