class RemoveTimeFromTimeSlots < ActiveRecord::Migration[5.1]
  def change
    remove_column :time_slots, :time, :time
  end
end
